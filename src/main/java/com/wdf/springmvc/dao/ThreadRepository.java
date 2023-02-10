package com.wdf.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wdf.springmvc.model.Thread;

@Repository
public interface ThreadRepository extends JpaRepository<Thread, Long>{

	

}
