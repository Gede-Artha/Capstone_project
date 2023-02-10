package com.wdf.springmvc.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wdf.springmvc.model.ApplyJob;
import com.wdf.springmvc.service.ApplyServiceImpl;




@Controller
public class ApplyJobController {
	
	@Autowired
	private ApplyServiceImpl applyPosting;
	
	
	@RequestMapping(value = "/applyUser")
	public String newThread(Map<String, Object> model) {
		model.put("user_apply", new ApplyJob());
		return "applyjob";
	}
	
	@RequestMapping(value = "doapply" , method = RequestMethod.POST)
	public String saveThread(@ModelAttribute("user_apply")ApplyJob applyjob) {
		applyPosting.doapply(applyjob);
		return "homepage";
	}
	
}
