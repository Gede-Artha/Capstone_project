package com.wdf.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wdf.springmvc.dao.PostingRepository;
import com.wdf.springmvc.model.Posting;


@Transactional
@Service
public class PostingServiceImpl {
	
	@Autowired
	private PostingRepository postingRepo;
	 
	
	public List<Posting> listAll() {
		return (List<Posting>) postingRepo.findAll();
	}
	
	public void dosave(Posting posting) {
		postingRepo.save(posting);
	}

	public Posting findByIDpost(int id) {
		return postingRepo.findByIDpost(id);
	}

	public void delete(Integer id) {
		
		 postingRepo.deleteByIDpost(id);
	}
	
}
