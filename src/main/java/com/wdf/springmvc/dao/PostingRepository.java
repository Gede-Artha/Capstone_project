package com.wdf.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wdf.springmvc.model.Posting;


@Repository
public interface PostingRepository extends JpaRepository<Posting, Long> {

	
	Posting findByIDpost(Integer id);

	void deleteByIDpost(Integer id);
	
}
