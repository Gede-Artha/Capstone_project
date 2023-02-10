package com.wdf.springmvc.controllers;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.wdf.springmvc.model.ApplyJob;
import com.wdf.springmvc.model.Posting;
import com.wdf.springmvc.model.User;
import com.wdf.springmvc.model.UserDto;
import com.wdf.springmvc.service.ApplyServiceImpl;
import com.wdf.springmvc.service.EmailService;
import com.wdf.springmvc.service.PostingServiceImpl;

import com.wdf.springmvc.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private ApplyServiceImpl applyPosting;
	
	@Autowired
	private PostingServiceImpl servicePosting;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private EmailService emailService;
	
	@RequestMapping(value = "/sendBulkEmail", method = RequestMethod.POST)
	public String forgotPassword( Model model, HttpServletRequest request) {
		
		// logic where sending email which has the link
	    String email = request.getParameter("email");
	    System.out.println(email);
	    try {
	    	
	    	UserDto userDto = userService.findByEmailId(email);
	    	
	    	if (userDto != null) {
	    		userDto.setEmailId(email);

	    		//send the email
	    		emailService.sendBulkEmail(email);
	    		model.addAttribute("msg", "*Email has send.");
	    	} else {
	    		model.addAttribute("error", "Could not find any User with the email " + email);
	    	}
		} catch (UnsupportedEncodingException | MessagingException e) {
	        model.addAttribute("error", "Error while sending email");
	    }
		
		return "sent-bulk-email";
	}
	
	
	
	@RequestMapping(value = "/sentbulk", method = RequestMethod.GET)
	public String sentBulk() {
		
		// go to send email page
		return "sent-bulk-email";
	}
	
	
	
	
	
	
	
	
	
	
	
	

	/*
	 * controller for see admin profile
	 * get the session and retrieve data from database
	 * */
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView seeProfile(HttpServletRequest request) throws Exception{
		ModelAndView model = new ModelAndView();
        HttpSession session = request.getSession(true);
        Integer userId = (int)session.getAttribute("userId");
       User user = userService.findUserById(userId);

		if (user == null) {
			model.addObject("msg", "User Profile Can't be found.");
			model.setViewName("filenotfound");
		} else {
			model.addObject("user", user);
			model.setViewName("admin-profile");
		}
		
		return model;
	}
	
	
	
	
	@RequestMapping(value = "/posting-add")
	public String newPosting(Map<String, Object> model) {
		model.put("posting", new Posting());
		return "posting-add";
	}

	
	@RequestMapping(value = "dosave" , method = RequestMethod.POST)
	public String savePosting(@ModelAttribute("posting")Posting posting) {
		servicePosting.dosave(posting);
		return "joblist";
	}
	
	
	/*
	 * display jobs list
	 * */
	
	@RequestMapping(value = "/joblist")
	public ModelAndView Joblist() {
		ModelAndView mav = new ModelAndView("joblist");
	
		List<Posting> listPosting = servicePosting.listAll();
		
		mav.addObject("listPosting", listPosting);
	return mav;
	}
	
	
	/*
	 * display applyjob list
	 * */
	
	@RequestMapping(value = "/applyjoblist")
	public ModelAndView ApplyJoblist() {
		ModelAndView mav = new ModelAndView("applyjoblist");
		
	List<ApplyJob> listApplyJob = applyPosting.listAll();
		
		mav.addObject("listApplyJob", listApplyJob);
		return mav;
	}
	
	
	
	
	
	
	/*
	 * display posting
	 * */
	
	
	@RequestMapping("/delete")
	@Transactional
	public String deletePosting(@RequestParam Integer id) {
		servicePosting.delete(id);
	    return "redirect:/admin/joblist";       
	}
	
	
	/*
	 * controller for listing all user from database
	 * then pass it to the view
	 * */
	@RequestMapping(value = "/dashboard")
	public ModelAndView showAllUsers(ModelAndView model) {
		List<User> listuser = userService.showAllUsers();
		model.addObject("listuser", listuser);
		model.setViewName("admin-dashboard");
		
		return model;
	}

	/*
	 * controller for adding new user
	 * goes to add form
	 * */
	@RequestMapping(value = "/adduser", method = RequestMethod.GET)
	public ModelAndView addUser() {
		ModelAndView mav = new ModelAndView("admin-add");
		mav.addObject("user", new User());
		
		return mav;
	}
	
	

	/*
	 * controller for retrieve data that will be edit
	 * goes to edit form
	 * */
	@RequestMapping(value = "/edituser/{id}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable int id, ModelAndView model) {
		
		User user = userService.findUserById(id);

		if (user == null) {
			model.addObject("msg", "Edit User data Can't be found.");
			model.setViewName("filenotfound");
		} else {
			model.addObject("user", user);
			model.setViewName("admin-edit");
		}

		
		return model;
	}
	
	/*
	 * controller for collecting the edited data
	 * passed it to database
	 * goes back to dashboard
	 * */
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public ModelAndView updateUser(
			@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			@RequestParam("email") String email, @RequestParam("pass") String pass,
			@RequestParam("country") String country, @RequestParam("city") String city,
			@RequestParam("phone") String phone, @RequestParam("company") String company, 
			@RequestParam("userID") Integer userID) {

		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName); 
		user.setEmail(email);
		user.setPass(pass);
		user.setCountry(country);
		user.setCity(city);
		user.setPhone(phone);
		user.setCompany(company);
		user.setUserID(userID);
	
		userService.updateUser(user);

		return new ModelAndView("redirect:/admin/dashboard");
			
	}

	/*
	 * controller for save the input data to the database
	 * goes back to dashboard
	 * */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveChange(HttpServletRequest request, HttpServletResponse response, 
			@ModelAttribute("user") User user) {

		userService.register(user);

		return new ModelAndView("redirect:/admin/dashboard");
	}
	
	/*
	 * controller for delete user data by using the user id
	 * to specify which one
	 * */
	@RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
	@Transactional
	public ModelAndView deleteUser(@PathVariable("id") int id) {
		userService.deleteUser(id);
		
		return new ModelAndView("redirect:/admin/dashboard");
	}

}
