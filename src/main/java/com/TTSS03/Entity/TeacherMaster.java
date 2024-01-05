package com.TTSS03.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tteacher_master")
public class TeacherMaster {
	
	@Id
    private Long sl_no;
    private String district_name;
    private String mandal_name;
    private String school_code;
    private String school_name;
    private String treasuryid;
    private String cmfs_id;
    private String aadhar;
    private String email;
    private String father_name;
    private String teacher_name;
    private String desig;
    private String teaching_flag;
    private String nature_of_appt;
    private String sch_mgt_name;
    private String gender;
    private String DOB;
    private String maritalstatus;
    private String mobilenumberteacher;
    private String complex_code;
    private String complex_school_name;
    private String workplace;
    private String disability;
	 
	public Long getSl_no() {
		return sl_no;
	}
	public void setSl_no(Long sl_no) {
		this.sl_no = sl_no;
	}
	public String getDistrict_name() {
		return district_name;
	}
	public void setDistrict_name(String district_name) {
		this.district_name = district_name;
	}
	public String getMandal_name() {
		return mandal_name;
	}
	public void setMandal_name(String mandal_name) {
		this.mandal_name = mandal_name;
	}
	public String getSchool_code() {
		return school_code;
	}
	public void setSchool_code(String school_code) {
		this.school_code = school_code;
	}
	public String getSchool_name() {
		return school_name;
	}
	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}
	public String getTreasuryid() {
		return treasuryid;
	}
	public void setTreasuryid(String treasuryid) {
		this.treasuryid = treasuryid;
	}
	public String getCmfs_id() {
		return cmfs_id;
	}
	public void setCmfs_id(String cmfs_id) {
		this.cmfs_id = cmfs_id;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFather_name() {
		return father_name;
	}
	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getDesig() {
		return desig;
	}
	public void setDesig(String desig) {
		this.desig = desig;
	}
	public String getTeaching_flag() {
		return teaching_flag;
	}
	public void setTeaching_flag(String teaching_flag) {
		this.teaching_flag = teaching_flag;
	}
	public String getNature_of_appt() {
		return nature_of_appt;
	}
	public void setNature_of_appt(String nature_of_appt) {
		this.nature_of_appt = nature_of_appt;
	}
	public String getSch_mgt_name() {
		return sch_mgt_name;
	}
	public void setSch_mgt_name(String sch_mgt_name) {
		this.sch_mgt_name = sch_mgt_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getMaritalstatus() {
		return maritalstatus;
	}
	public void setMaritalstatus(String maritalstatus) {
		this.maritalstatus = maritalstatus;
	}
	public String getMobilenumberteacher() {
		return mobilenumberteacher;
	}
	public void setMobilenumberteacher(String mobilenumberteacher) {
		this.mobilenumberteacher = mobilenumberteacher;
	}
	public String getComplex_code() {
		return complex_code;
	}
	public void setComplex_code(String complex_code) {
		this.complex_code = complex_code;
	}
	public String getComplex_school_name() {
		return complex_school_name;
	}
	public void setComplex_school_name(String complex_school_name) {
		this.complex_school_name = complex_school_name;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getDisability() {
		return disability;
	}
	public void setDisability(String disability) {
		this.disability = disability;
	}
	 
    
}
