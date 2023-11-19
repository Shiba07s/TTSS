package com.TTSS03.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class MyTrainings {
	@Id
	private int slno;
	private String tname;
	private String tdescrition;
	private String training_start_date_to_end_date;
	private String tagency;
	private String tmode;
	private String tsubject;
	private String vname;
	private String vaddress;
	private String coordinatorname;
	private String email;
	private String mobile;
	public int getSlno() {
		return slno;
	}
	public void setSlno(int slno) {
		this.slno = slno;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTdescrition() {
		return tdescrition;
	}
	public void setTdescrition(String tdescrition) {
		this.tdescrition = tdescrition;
	}
	public String getTraining_start_date_to_end_date() {
		return training_start_date_to_end_date;
	}
	public void setTraining_start_date_to_end_date(String training_start_date_to_end_date) {
		this.training_start_date_to_end_date = training_start_date_to_end_date;
	}
	public String getTagency() {
		return tagency;
	}
	public void setTagency(String tagency) {
		this.tagency = tagency;
	}
	public String getTmode() {
		return tmode;
	}
	public void setTmode(String tmode) {
		this.tmode = tmode;
	}
	public String getTsubject() {
		return tsubject;
	}
	public void setTsubject(String tsubject) {
		this.tsubject = tsubject;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVaddress() {
		return vaddress;
	}
	public void setVaddress(String vaddress) {
		this.vaddress = vaddress;
	}
	public String getCoordinatorname() {
		return coordinatorname;
	}
	public void setCoordinatorname(String coordinatorname) {
		this.coordinatorname = coordinatorname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	
	
	

}
