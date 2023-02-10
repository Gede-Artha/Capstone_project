package com.wdf.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wdf.springmvc.dao.ApplyJobRepository;
import com.wdf.springmvc.model.ApplyJob;

@Transactional
@Service
public class ApplyServiceImpl {
	
	@Autowired
	private ApplyJobRepository applyRepo;

	public void doapply(ApplyJob applyjob) {
		applyRepo.save(applyjob);
		
	}

	public List<ApplyJob> listAll() {
		return (List<ApplyJob>)  applyRepo.findAll();
	}

	

}
