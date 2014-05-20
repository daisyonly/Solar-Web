package com.thomas.solar.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tbl_projectdetail")
public class Projectdetail implements Serializable {
	/** Default value included to remove warning. Remove or modify at will. **/
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long pid;

	@NotNull
	@Size(min = 1, max = 50)
	private String pcode;

	@NotNull
	private String status = "Entered";
	
	@NotNull
	@Column(name = "rooftop_flag")
	private String rooftopFlag = "Y";
	
	@NotNull
	@Column(name = "ground_flag")
	private String groundFlag = "Y";
	
	@NotNull
	@Column(name = "gridtype")
	private String gridType = "Off-Grid";

	public Long getPid() {
		return pid;
	}

	public void setPid(Long pid) {
		this.pid = pid;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRooftopFlag() {
		return rooftopFlag;
	}

	public void setRooftopFlag(String rooftopFlag) {
		this.rooftopFlag = rooftopFlag;
	}

	public String getGroundFlag() {
		return groundFlag;
	}

	public void setGroundFlag(String groundFlag) {
		this.groundFlag = groundFlag;
	}

	public String getGridType() {
		return gridType;
	}

	public void setGridType(String gridType) {
		this.gridType = gridType;
	}

}