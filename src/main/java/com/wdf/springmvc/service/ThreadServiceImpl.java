package com.wdf.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wdf.springmvc.dao.ThreadRepository;
import com.wdf.springmvc.model.Thread;

@Transactional
@Service
public class ThreadServiceImpl {

	

	@Autowired
	private ThreadRepository threadRepo;

	public void docomment(Thread threaad) {
		threadRepo.save(threaad);
		
	}

	public List<Thread> listAll() {
		return (List<Thread>) threadRepo.findAll();
	}
	 
}
