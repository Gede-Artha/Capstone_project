package com.lithan;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;

import com.wdf.springmvc.config.JpaConfig;
import com.wdf.springmvc.config.WebMvcConfig;
import com.wdf.springmvc.model.User;
import com.wdf.springmvc.service.UserService;

@ExtendWith(SpringExtension.class)
@WebAppConfiguration
@ContextConfiguration(classes= {WebMvcConfig.class, JpaConfig.class})
class FindUserTest {
	
	@Autowired
	UserService userService;

	//testing to find all user in databases
	@Test
	void testShowAllUsers() {
		List<User> listuser = userService.showAllUsers();
		assertNotNull(listuser);
	}

	//testing find user by id with equals data in databases with expected true result
	@Test
	void testValidFindUserById() {
		User user = userService.findUserById(10);
		assertTrue(user.getEmail().equals("gedeartha@gmail.com"));
	}
	
	//testing find user by id with not equal data in databases with expected true result
	@Test
	void testInvalidFindUserById() {
		User user = userService.findUserById(1);
		assertNull(user);
	}


}
