package com.wdf.springmvc.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wdf.springmvc.model.Posting;

import com.wdf.springmvc.service.PostingServiceImpl;
import com.wdf.springmvc.service.ThreadServiceImpl;
import com.wdf.springmvc.model.Thread;




@Controller
public class MainAndThreadController {

		
		@Autowired
		private ThreadServiceImpl serviceThread;
		
		
		@Autowired
		private PostingServiceImpl servicePosting;
		
	
		
		
		
		@RequestMapping(value = "/commentThread")
		public String newThread(Map<String, Object> model) {
			model.put("threaad", new Thread());
			return "commentThread";
		}

		
		
		@RequestMapping(value = "docomment" , method = RequestMethod.POST)
		public String saveThread(@ModelAttribute("threaad")Thread threaad) {
			serviceThread.docomment(threaad);
			return "seePost";
		}
		
		
		
		
		
		
		/*
		 * code for display comment
		 * */
		@RequestMapping(value = "/seePost")
		public ModelAndView Comment() {
			ModelAndView mav = new ModelAndView("seePost");
			
			List<Thread> listComment = serviceThread.listAll();
			
			mav.addObject("listComment", listComment);
			return mav;
		}
		
		
		/*
		 * code for display thread
		 * */
		@RequestMapping(value = "/jobpost")
		public ModelAndView Jobposting() {
			ModelAndView mav = new ModelAndView("jobpost");
			
			List<Posting> listPosting = servicePosting.listAll();
			
			mav.addObject("listPosting", listPosting);
			return mav;
		}
		
		
		
		@RequestMapping("/homepage")
		public String toHome(){
			return "homepage";
		}
		
		
		
		/*
		 * code for see posting
		 * */
		
		@RequestMapping(value = "/seeposting/{id}", method = RequestMethod.GET)
		public ModelAndView seePosting(@PathVariable int id) throws Exception{
			ModelAndView model = new ModelAndView();
			Posting posting = servicePosting.findByIDpost(id);
				model.addObject("posting", posting);
				model.setViewName("seePost");
			return model;
		}
		
		
		
		
		@RequestMapping("/thankyou")
		public String toThanks(){
			return "thankyou";
		}
		
		@RequestMapping("/")
		public String toLanding(){
			return "index";
		}
		

}