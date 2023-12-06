package com.TTSS03.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="tresoursemaster")
public class Resource {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long slno;
	private String resourcecode;
	private String resourcetype;
	private String created_at;
	private String created_by;
	private String updated_at;
	private String update_by;
	private String status;
	private String remark;
	public long getSlno() {
		return slno;
	}
	public void setSlno(long slno) {
		this.slno = slno;
	}
	public String getResourcecode() {
		return resourcecode;
	}
	public void setResourcecode(String resourcecode) {
		this.resourcecode = resourcecode;
	}
	public String getResourcetype() {
		return resourcetype;
	}
	public void setResourcetype(String resourcetype) {
		this.resourcetype = resourcetype;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public String getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	public String getUpdated_by() {
		return update_by;
	}
	public void setUpdated_by(String updated_by) {
		this.update_by = updated_by;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

 
}
