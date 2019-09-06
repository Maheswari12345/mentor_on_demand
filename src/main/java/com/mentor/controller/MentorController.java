package com.mentor.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mentor.model.Courses;
import com.mentor.model.Login;
import com.mentor.model.Mentor;
import com.mentor.service.MentorService;

@Controller
public class MentorController {
	@Autowired
	MentorService mservice;

	@RequestMapping(path = "/mentorlist")
	public ModelAndView getmentorlist() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mentorlist");
		mv.addObject("mentorlist", mservice.getmentorslist());
		return mv;
	}

	@RequestMapping(path = "/studentslist")
	public ModelAndView getstudentlist() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlist");
		mv.addObject("studentlist", mservice.getmentorslist());
		return mv;
	}

	@RequestMapping(path = "/addmentor", method = RequestMethod.POST)
	public String addcourses(Mentor mentor) throws SQLException {
		System.out.println(mentor);
		mservice.insertmentors(mentor);
		return "redirect:/mentorregsuccessful";

	}
	@RequestMapping(path="/mentorregsuccessful")
	public ModelAndView mentorregsuccess()throws Exception
	{
		ModelAndView m=new ModelAndView();
		m.setViewName("mentorregsuccess");
		return m;
	}

	@RequestMapping(path = "/addmentor", method = RequestMethod.GET)
	public String addcoursesGet(ModelMap model) throws SQLException {
		Mentor mentor = new Mentor();
		model.addAttribute("mentor", mentor);
		return "addmentor";
	}

	@RequestMapping(value = "/deletementor/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		mservice.deletementor(id);
		return "redirect:/mentorlist";
	}
	
	@RequestMapping(path="/mentorlogin")
	public String mentorLogin(ModelMap model)throws SQLException
	{
		Login login=new Login();
		model.addAttribute("mentorlogin",login);
		return "mentorlogin";
	}
	
	@RequestMapping(path="/mentorlogin",method=RequestMethod.POST)
	public ModelAndView mentorlogin() throws Exception
	{
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("mentorloginaction");
		return mv;
	}
	

}
