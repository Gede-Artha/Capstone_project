package com.lithan;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;

import com.wdf.springmvc.config.JpaConfig;
import com.wdf.springmvc.config.WebMvcConfig;
import com.wdf.springmvc.model.User;
import com.wdf.springmvc.model.UserDto;
import com.wdf.springmvc.service.UserService;

@ExtendWith(SpringExtension.class)
@WebAppConfiguration
@ContextConfiguration(classes= {WebMvcConfig.class, JpaConfig.class})
class ServiceLoginUser {

	@Autowired
	UserService service;
	
	//testing to login with databases record with ecpected result is true
	@Test
	public void testValidLoginUser() {
		UserDto dto = new UserDto();
		dto.setEmailId("gedeartha@gmail.com");
		dto.setPassword("123456");
		User result = service.loginUser(dto);
		
		assertTrue(result.getEmail().equals(dto.getEmailId()));
	}
	
	
	//testing to login with not databases record with ecpected result null record
	@Test
	public void testInvalidLoginUser() {
		UserDto dto = new UserDto();
		dto.setEmailId("xyz@gmail.com");
		dto.setPassword("asdfgh");
		User result = service.loginUser(dto);
		
		assertEquals(null, result);
		
	}


}
