package com.wdf.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;
import javax.transaction.Transactional;






@Transactional
@Entity
@Table(name="threaad")
public class Thread {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "IDthread")
	private Integer IDthread;
	
	private String threadCmnt;
	
//	@OneToOne( mappedBy = "thread")
//	private Posting posting;
//	
	
public Thread() {
		
		
	}

	





public Thread(Integer iDthread, String threadCmnt) {
	super();
	IDthread = iDthread;
	this.threadCmnt = threadCmnt;
}







public Integer getIDthread() {
	return IDthread;
}



public void setIDthread(Integer iDthread) {
	this.IDthread = iDthread;
}



public String getThreadCmnt() {
	return threadCmnt;
}



public void setThreadCmnt(String threadCmnt) {
	this.threadCmnt = threadCmnt;
}


//
//public Posting getPosting() {
//	return posting;
//}
//
//
//
//public void setPosting(Posting posting) {
//	this.posting = posting;
//}


}
