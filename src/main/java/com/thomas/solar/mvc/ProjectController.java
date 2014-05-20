package com.thomas.solar.mvc;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thomas.solar.dao.ProjectDao;
import com.thomas.solar.domain.Projectdetail;

@Controller
@RequestMapping("/projects")
public class ProjectController
{
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Autowired
    private ProjectDao projectDao;

	@RequestMapping(method=RequestMethod.GET)
    public String get(Model model)
    {
		model.addAttribute("newProject", new Projectdetail());
		model.addAttribute("projects", projectDao.findAll());
        return "project";
    }
	
	@RequestMapping(value="/view/{id}", method=RequestMethod.GET, produces="application/json")
    public @ResponseBody Projectdetail lookupMemberById(@PathVariable("id") Long pid)
    {
        return projectDao.findById(pid);
    }
    
    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public String register(@Valid @ModelAttribute("newProject") Projectdetail project, BindingResult result, Model model)
    {
    	logger.info("create new project....");
    	if (!result.hasErrors()) {
    		projectDao.register(project);
            return "redirect:/projects";
        }
        else {
        	logger.error("The error count is =" + result.getErrorCount());
            model.addAttribute("projects", projectDao.findAll());
            return "project";
        }
    }
}
