package com.TTSS03.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="tappliedtrainingsfromparticipants")
public class AppliedTrainingsFromTrainee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int slno;
	private String tname;
	private String tmode;
	private String description;
	private String Apply_start_to_end_date;
	private String maplocation;
	private String coordinator_details;
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
	public String getTmode() {
		return tmode;
	}
	public void setTmode(String tmode) {
		this.tmode = tmode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getApply_start_to_end_date() {
		return Apply_start_to_end_date;
	}
	public void setApply_start_to_end_date(String apply_start_to_end_date) {
		Apply_start_to_end_date = apply_start_to_end_date;
	}
	public String getMaplocation() {
		return maplocation;
	}
	public void setMaplocation(String maplocation) {
		this.maplocation = maplocation;
	}
	public String getCoordinator_details() {
		return coordinator_details;
	}
	public void setCoordinator_details(String coordinator_details) {
		this.coordinator_details = coordinator_details;
	}
	
	

}
