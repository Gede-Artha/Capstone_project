package com.wdf.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wdf.springmvc.model.ApplyJob;

@Repository
public interface ApplyJobRepository extends JpaRepository<ApplyJob, Long> {

	
}
