package com.wdf.springmvc.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.transaction.Transactional;



@Entity
@Transactional
@Table(name="posting")
public class Posting {

 	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "IDpost")
	
	
	private Integer IDpost;
	
	private String PostMessage;
	
	private String position;
	
	private String companyName;
	
	private String time;
	
	private String salary;
	
	private String location;
	

	
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "IDthread", referencedColumnName = "IDthread")
	private Thread thread;
	
	
	public Posting() {
		
		
	}
	

	public Posting(Integer iDpost, String postMessage, String position, String companyName, String time, String salary,
			String location, Thread thread) {
		super();
		IDpost = iDpost;
		PostMessage = postMessage;
		this.position = position;
		this.companyName = companyName;
		this.time = time;
		this.salary = salary;
		this.location = location;
		this.thread = thread;
	}








	public Integer getIDpost() {
		return IDpost;
	}








	public void setIDpost(Integer iDpost) {
		IDpost = iDpost;
	}








	public String getPostMessage() {
		return PostMessage;
	}








	public void setPostMessage(String postMessage) {
		PostMessage = postMessage;
	}








	public String getPosition() {
		return position;
	}








	public void setPosition(String position) {
		this.position = position;
	}








	public String getCompanyName() {
		return companyName;
	}








	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}








	public String getTime() {
		return time;
	}








	public void setTime(String time) {
		this.time = time;
	}








	public String getSalary() {
		return salary;
	}








	public void setSalary(String salary) {
		this.salary = salary;
	}








	public String getLocation() {
		return location;
	}








	public void setLocation(String location) {
		this.location = location;
	}








	public Thread getThread() {
		return thread;
	}








	public void setThread(Thread thread) {
		this.thread = thread;
	}


}
