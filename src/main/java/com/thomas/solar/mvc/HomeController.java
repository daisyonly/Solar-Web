package com.thomas.solar.mvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thomas.solar.dao.MemberDao;
import com.thomas.solar.domain.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
    @Autowired
    private MemberDao memberDao;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("newMember", new Member());
        model.addAttribute("members", memberDao.findAllOrderedByName());
		
		return "home";
	}
	
    @RequestMapping(value = "/", method=RequestMethod.POST)
    public String registerNewMember(@Valid @ModelAttribute("newMember") Member newMember, BindingResult result, Model model)
    {
    	logger.info("registerNewMember....");
    	if (!result.hasErrors()) {
            memberDao.register(newMember);
            logger.info("Insert data :"+newMember.getEmail());
            return "redirect:/";
        }
        else {
        	logger.error("The error count is =" + result.getErrorCount());
        	model.addAttribute("serverTime", "insert data error" );
            model.addAttribute("members", memberDao.findAllOrderedByName());
            return "home";
        }
    }
	
}
