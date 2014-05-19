package com.thomas.solar.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thomas.solar.dao.MemberDao;
import com.thomas.solar.domain.Member;

@Controller
@RequestMapping("/members")
public class MemberRestController
{
    @Autowired
    private MemberDao memberDao;

    @RequestMapping(value="/list", method=RequestMethod.GET, produces="application/json")
    public @ResponseBody List<Member> listAllMembers()
    {
        return memberDao.findAllOrderedByName();
    }

    @RequestMapping(value="/view/{id}", method=RequestMethod.GET, produces="application/json")
    public @ResponseBody Member lookupMemberById(@PathVariable("id") Long id)
    {
        return memberDao.findById(id);
    }
    @RequestMapping(value="/delete/{id}")
    public String deleteMemberById(@PathVariable("id") Long id)
    {
        memberDao.delete(id);
        return "redirect:/";
    }
}
