package com.TTSS03.Entity;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="academicactualtable")
public class SearchSchedule {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sl_no;
	private String ref_planner_id;
	
	private String tmonth;
	private String tyear;
	private String tcategory;
	private String tname;
	private String tdescription;
	
	
	private String training_reg_start_dt;
	private String training_reg_end_dt;
	
	
	private String tstatus;
	private String tmode;

	private String tgrade;
	private String tagency;
	private String tsubjects;
	
	
	public int getSl_no() {
		return sl_no;
	}
	public void setSl_no(int sl_no) {
		this.sl_no = sl_no;
	}
	public String getRef_planner_id() {
		return ref_planner_id;
	}
	public void setRef_planner_id(String ref_planner_id) {
		this.ref_planner_id = ref_planner_id;
	}
	public String getTmonth() {
		return tmonth;
	}
	public void setTmonth(String tmonth) {
		this.tmonth = tmonth;
	}
	public String getTyear() {
		return tyear;
	}
	public void setTyear(String tyear) {
		this.tyear = tyear;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTdescription() {
		return tdescription;
	}
	public void setTdescription(String tdescription) {
		this.tdescription = tdescription;
	}
	
	
	public String getTstatus() {
		return tstatus;
	}
	public void setTstatus(String tstatus) {
		this.tstatus = tstatus;
	}
	public String getTmode() {
		return tmode;
	}
	public void setTmode(String tmode) {
		this.tmode = tmode;
	}
	public String getTgrade() {
		return tgrade;
	}
	public void setTgrade(String tgrade) {
		this.tgrade = tgrade;
	}
	public String getTagency() {
		return tagency;
	}
	public void setTagency(String tagency) {
		this.tagency = tagency;
	}
	public String getTraining_reg_start_dt() {
		return training_reg_start_dt;
	}
	public void setTraining_reg_start_dt(String training_reg_start_dt) {
		this.training_reg_start_dt = training_reg_start_dt;
	}
	public String getTraining_reg_end_dt() {
		return training_reg_end_dt;
	}
	public void setTraining_reg_end_dt(String training_reg_end_dt) {
		this.training_reg_end_dt = training_reg_end_dt;
	}
	public String getTcategory() {
		return tcategory;
	}
	public void setTcategory(String tcategory) {
		this.tcategory = tcategory;
	}
	public String getT_subjects() {
		return tsubjects;
	}
	public void setT_subjects(String t_subjects) {
		this.tsubjects = t_subjects;
	}
	
	
}
