package com.TTSS03.Entity;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="ttreasurymaster")
public class TreasuryGovt {
	@Id
	private long rowid;
    private String treasuryid;
    private String username;
    private String surname;
    private String designation;
    private String workplace;
    private String fathername;
    private String dob;
    private String gender;
    private String maritalstatus;
    private String religion;
    private String mothertongue;
    private String community;
    private String aadhar;
    private String locality;
    private String disability;
    private String address_type;
    private String inserteddate;
    private String schoolcat;
    private String nextlevel;
    private String schcd;
    private String photopath;
    private String imagename;
    private String mobilenumberteacher;
    private String teacher_email;
    private String pancard;
    private String presentschooljoindate;
    private String percentageofdis;
    private String photoconfirmation;
    private String desginationid;
    private String localitydistrict;
    private String nonlocalitydistrict;
    private String permanentaddresspincode;
    private String permanentaddressdistrict;
    private String permanentaddresspaddress;
    private String permanentaddressvillage;
    private String permanentaddressmandal;
    private String presentaddresspincode;
    private String presentaddressdistrict;
    private String presentaddresspaddress;
    private String presentaddressvillage;
    private String presentaddressmandal;
    private String districtnamewrk;
    private String mandalnamewrk;
    private String villagewrk;
    private String eismaster_status;
    private String rank;
    private String roaster_point;
    private String roaster_category;
    private String loginid;
    private String updateddate;
    private String post_status;
    private String medium;
    private String door_num;
    private String permanent_door_num;
    private String no_of_dependencies;
    private String type_disability;
    private String emp_empgovt;
    private String status;
    private String covid_vaccine;
    private String cfms_id;
    private String confirm_treasuryid;
    private String other_state;
    private String other_district;
    private String insert_type;
    private String permanentotheraddress;
    private String confirm_hm;
    private String confirm_deo;
    private String confirm_meo;
    private String confirm_time_hm;
    private String confirm_time_meo;
    private String confirm_time_deo;
	public long getRowid() {
		return rowid;
	}
	public void setRowid(long rowid) {
		this.rowid = rowid;
	}
	public String getTreasuryid() {
		return treasuryid;
	}
	public void setTreasuryid(String treasuryid) {
		this.treasuryid = treasuryid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMaritalstatus() {
		return maritalstatus;
	}
	public void setMaritalstatus(String maritalstatus) {
		this.maritalstatus = maritalstatus;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getMothertongue() {
		return mothertongue;
	}
	public void setMothertongue(String mothertongue) {
		this.mothertongue = mothertongue;
	}
	public String getCommunity() {
		return community;
	}
	public void setCommunity(String community) {
		this.community = community;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public String getDisability() {
		return disability;
	}
	public void setDisability(String disability) {
		this.disability = disability;
	}
	public String getAddress_type() {
		return address_type;
	}
	public void setAddress_type(String address_type) {
		this.address_type = address_type;
	}
	public String getInserteddate() {
		return inserteddate;
	}
	public void setInserteddate(String inserteddate) {
		this.inserteddate = inserteddate;
	}
	public String getSchoolcat() {
		return schoolcat;
	}
	public void setSchoolcat(String schoolcat) {
		this.schoolcat = schoolcat;
	}
	public String getNextlevel() {
		return nextlevel;
	}
	public void setNextlevel(String nextlevel) {
		this.nextlevel = nextlevel;
	}
	public String getSchcd() {
		return schcd;
	}
	public void setSchcd(String schcd) {
		this.schcd = schcd;
	}
	public String getPhotopath() {
		return photopath;
	}
	public void setPhotopath(String photopath) {
		this.photopath = photopath;
	}
	public String getImagename() {
		return imagename;
	}
	public void setImagename(String imagename) {
		this.imagename = imagename;
	}
	public String getMobilenumberteacher() {
		return mobilenumberteacher;
	}
	public void setMobilenumberteacher(String mobilenumberteacher) {
		this.mobilenumberteacher = mobilenumberteacher;
	}
	public String getTeacher_email() {
		return teacher_email;
	}
	public void setTeacher_email(String teacher_email) {
		this.teacher_email = teacher_email;
	}
	public String getPancard() {
		return pancard;
	}
	public void setPancard(String pancard) {
		this.pancard = pancard;
	}
	public String getPresentschooljoindate() {
		return presentschooljoindate;
	}
	public void setPresentschooljoindate(String presentschooljoindate) {
		this.presentschooljoindate = presentschooljoindate;
	}
	public String getPercentageofdis() {
		return percentageofdis;
	}
	public void setPercentageofdis(String percentageofdis) {
		this.percentageofdis = percentageofdis;
	}
	public String getPhotoconfirmation() {
		return photoconfirmation;
	}
	public void setPhotoconfirmation(String photoconfirmation) {
		this.photoconfirmation = photoconfirmation;
	}
	public String getDesginationid() {
		return desginationid;
	}
	public void setDesginationid(String desginationid) {
		this.desginationid = desginationid;
	}
	public String getLocalitydistrict() {
		return localitydistrict;
	}
	public void setLocalitydistrict(String localitydistrict) {
		this.localitydistrict = localitydistrict;
	}
	public String getNonlocalitydistrict() {
		return nonlocalitydistrict;
	}
	public void setNonlocalitydistrict(String nonlocalitydistrict) {
		this.nonlocalitydistrict = nonlocalitydistrict;
	}
	public String getPermanentaddresspincode() {
		return permanentaddresspincode;
	}
	public void setPermanentaddresspincode(String permanentaddresspincode) {
		this.permanentaddresspincode = permanentaddresspincode;
	}
	public String getPermanentaddressdistrict() {
		return permanentaddressdistrict;
	}
	public void setPermanentaddressdistrict(String permanentaddressdistrict) {
		this.permanentaddressdistrict = permanentaddressdistrict;
	}
	public String getPermanentaddresspaddress() {
		return permanentaddresspaddress;
	}
	public void setPermanentaddresspaddress(String permanentaddresspaddress) {
		this.permanentaddresspaddress = permanentaddresspaddress;
	}
	public String getPermanentaddressvillage() {
		return permanentaddressvillage;
	}
	public void setPermanentaddressvillage(String permanentaddressvillage) {
		this.permanentaddressvillage = permanentaddressvillage;
	}
	public String getPermanentaddressmandal() {
		return permanentaddressmandal;
	}
	public void setPermanentaddressmandal(String permanentaddressmandal) {
		this.permanentaddressmandal = permanentaddressmandal;
	}
	public String getPresentaddresspincode() {
		return presentaddresspincode;
	}
	public void setPresentaddresspincode(String presentaddresspincode) {
		this.presentaddresspincode = presentaddresspincode;
	}
	public String getPresentaddressdistrict() {
		return presentaddressdistrict;
	}
	public void setPresentaddressdistrict(String presentaddressdistrict) {
		this.presentaddressdistrict = presentaddressdistrict;
	}
	public String getPresentaddresspaddress() {
		return presentaddresspaddress;
	}
	public void setPresentaddresspaddress(String presentaddresspaddress) {
		this.presentaddresspaddress = presentaddresspaddress;
	}
	public String getPresentaddressvillage() {
		return presentaddressvillage;
	}
	public void setPresentaddressvillage(String presentaddressvillage) {
		this.presentaddressvillage = presentaddressvillage;
	}
	public String getPresentaddressmandal() {
		return presentaddressmandal;
	}
	public void setPresentaddressmandal(String presentaddressmandal) {
		this.presentaddressmandal = presentaddressmandal;
	}
	public String getDistrictnamewrk() {
		return districtnamewrk;
	}
	public void setDistrictnamewrk(String districtnamewrk) {
		this.districtnamewrk = districtnamewrk;
	}
	public String getMandalnamewrk() {
		return mandalnamewrk;
	}
	public void setMandalnamewrk(String mandalnamewrk) {
		this.mandalnamewrk = mandalnamewrk;
	}
	public String getVillagewrk() {
		return villagewrk;
	}
	public void setVillagewrk(String villagewrk) {
		this.villagewrk = villagewrk;
	}
	public String getEismaster_status() {
		return eismaster_status;
	}
	public void setEismaster_status(String eismaster_status) {
		this.eismaster_status = eismaster_status;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getRoaster_point() {
		return roaster_point;
	}
	public void setRoaster_point(String roaster_point) {
		this.roaster_point = roaster_point;
	}
	public String getRoaster_category() {
		return roaster_category;
	}
	public void setRoaster_category(String roaster_category) {
		this.roaster_category = roaster_category;
	}
	public String getLoginid() {
		return loginid;
	}
	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}
	public String getUpdateddate() {
		return updateddate;
	}
	public void setUpdateddate(String updateddate) {
		this.updateddate = updateddate;
	}
	public String getPost_status() {
		return post_status;
	}
	public void setPost_status(String post_status) {
		this.post_status = post_status;
	}
	public String getMedium() {
		return medium;
	}
	public void setMedium(String medium) {
		this.medium = medium;
	}
	public String getDoor_num() {
		return door_num;
	}
	public void setDoor_num(String door_num) {
		this.door_num = door_num;
	}
	public String getPermanent_door_num() {
		return permanent_door_num;
	}
	public void setPermanent_door_num(String permanent_door_num) {
		this.permanent_door_num = permanent_door_num;
	}
	public String getNo_of_dependencies() {
		return no_of_dependencies;
	}
	public void setNo_of_dependencies(String no_of_dependencies) {
		this.no_of_dependencies = no_of_dependencies;
	}
	public String getType_disability() {
		return type_disability;
	}
	public void setType_disability(String type_disability) {
		this.type_disability = type_disability;
	}
	public String getEmp_empgovt() {
		return emp_empgovt;
	}
	public void setEmp_empgovt(String emp_empgovt) {
		this.emp_empgovt = emp_empgovt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCovid_vaccine() {
		return covid_vaccine;
	}
	public void setCovid_vaccine(String covid_vaccine) {
		this.covid_vaccine = covid_vaccine;
	}
	public String getCfms_id() {
		return cfms_id;
	}
	public void setCfms_id(String cfms_id) {
		this.cfms_id = cfms_id;
	}
	public String getConfirm_treasuryid() {
		return confirm_treasuryid;
	}
	public void setConfirm_treasuryid(String confirm_treasuryid) {
		this.confirm_treasuryid = confirm_treasuryid;
	}
	public String getOther_state() {
		return other_state;
	}
	public void setOther_state(String other_state) {
		this.other_state = other_state;
	}
	public String getOther_district() {
		return other_district;
	}
	public void setOther_district(String other_district) {
		this.other_district = other_district;
	}
	public String getInsert_type() {
		return insert_type;
	}
	public void setInsert_type(String insert_type) {
		this.insert_type = insert_type;
	}
	public String getPermanentotheraddress() {
		return permanentotheraddress;
	}
	public void setPermanentotheraddress(String permanentotheraddress) {
		this.permanentotheraddress = permanentotheraddress;
	}
	public String getConfirm_hm() {
		return confirm_hm;
	}
	public void setConfirm_hm(String confirm_hm) {
		this.confirm_hm = confirm_hm;
	}
	public String getConfirm_deo() {
		return confirm_deo;
	}
	public void setConfirm_deo(String confirm_deo) {
		this.confirm_deo = confirm_deo;
	}
	public String getConfirm_meo() {
		return confirm_meo;
	}
	public void setConfirm_meo(String confirm_meo) {
		this.confirm_meo = confirm_meo;
	}
	public String getConfirm_time_hm() {
		return confirm_time_hm;
	}
	public void setConfirm_time_hm(String confirm_time_hm) {
		this.confirm_time_hm = confirm_time_hm;
	}
	public String getConfirm_time_meo() {
		return confirm_time_meo;
	}
	public void setConfirm_time_meo(String confirm_time_meo) {
		this.confirm_time_meo = confirm_time_meo;
	}
	public String getConfirm_time_deo() {
		return confirm_time_deo;
	}
	public void setConfirm_time_deo(String confirm_time_deo) {
		this.confirm_time_deo = confirm_time_deo;
	}
	
}
