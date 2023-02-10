package com.wdf.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.transaction.Transactional;

@Entity
@Transactional
@Table(name="user_apply")
public class ApplyJob {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id_apply")
	
	
	private Integer id_apply;
	
	private String userName_apply;
	
	private String apply_company;
	
	private String apply_positition;
	
public ApplyJob() {
		
		
	}

public Integer getId_apply() {
	return id_apply;
}

public void setId_apply(Integer id_apply) {
	this.id_apply = id_apply;
}

public String getUserName_apply() {
	return userName_apply;
}

public void setUserName_apply(String userName_apply) {
	this.userName_apply = userName_apply;
}

public String getApply_company() {
	return apply_company;
}

public void setApply_company(String apply_company) {
	this.apply_company = apply_company;
}

public String getApply_positition() {
	return apply_positition;
}

public void setApply_positition(String apply_positition) {
	this.apply_positition = apply_positition;
}

	
	
}
