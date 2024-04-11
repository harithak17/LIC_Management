package com.insurence.entity;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class LocalAgentReg {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int agentId;
	@NotEmpty(message = "Name cannot be empty")
	@Size(min=2, max=30,message = "Size should be beatween 2 and 30 characters")
	private String agentName;
	
	@Email(message = "Email is not valid", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
	@NotEmpty(message = "Email cannot be empty")
	private String agentEmail;
	
	@NotEmpty(message = "Mobile number cannot be empty")
	@Pattern(regexp="(^$|[0-9]{10})",message = "Enter 10 Digit mobile number")
	private String agentMob;
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	private String agentDob;
	
	@NotEmpty(message = "Choose Gender")
	private String agentGen;
	
	@NotEmpty(message = "Addressline cannot be empty")
	@Size(min=2, max=30,message = "Size should be between 2 and 50 characters")
	private String agentAddr1;	
	
	private String agentAddr2;
	
	@NotEmpty(message = "Pincode cannot be empty")
	@Pattern(regexp="(^$|[0-9]{6})",message = "Enter 6 Digit Pincode")
	private String agentPin;
	
	@NotEmpty(message = "City cannot be empty")
	@Size(min=2, max=20,message = "Size should be beatween 2 and 20 characters")
	private String agentCity;
	
	@NotEmpty(message = "Username cannot be empty")
	@Pattern(regexp = "^[a-zA-Z0-9]{6,12}$",
            message = "Username must be of 6 to 12 length with no special characters")
	private String agentUname;
	
	@NotEmpty(message = "Password cannot be empty")
	@Pattern(regexp = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}",
            message = "Password must contain atleast 1 uppercase, 1 lowercase, 1 special character and 1 digit ")
	private String agentPasswd;
	
	@ManyToOne
    @JoinColumn(name = "agentLoc")
	private Location agentLoc;
	
	private String user_type;
	
	@NotEmpty(message = "Employee ID cannot be empty")
	private String agentEmpId;
	
	private String reqRemarks;
	
//	@NotNull
//	@Size(min=0, max=50)
	private String agentPhotopath;	
	private String agentProofpath;
	
	private String status;

	public int getAgentId() {
		return agentId;
	}

	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}

	public String getAgentName() {
		return agentName;
	}

	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}

	public String getAgentEmail() {
		return agentEmail;
	}

	public void setAgentEmail(String agentEmail) {
		this.agentEmail = agentEmail;
	}

	public String getAgentMob() {
		return agentMob;
	}

	public void setAgentMob(String agentMob) {
		this.agentMob = agentMob;
	}

	public String getAgentDob() {
		return agentDob;
	}

	public void setAgentDob(String agentDob) {
		this.agentDob = agentDob;
	}

	public String getAgentGen() {
		return agentGen;
	}

	public void setAgentGen(String agentGen) {
		this.agentGen = agentGen;
	}

	public String getAgentAddr1() {
		return agentAddr1;
	}

	public void setAgentAddr1(String agentAddr1) {
		this.agentAddr1 = agentAddr1;
	}

	public String getAgentAddr2() {
		return agentAddr2;
	}

	public void setAgentAddr2(String agentAddr2) {
		this.agentAddr2 = agentAddr2;
	}

	public String getAgentPin() {
		return agentPin;
	}

	public void setAgentPin(String agentPin) {
		this.agentPin = agentPin;
	}

	public String getAgentCity() {
		return agentCity;
	}

	public void setAgentCity(String agentCity) {
		this.agentCity = agentCity;
	}

	public String getAgentUname() {
		return agentUname;
	}

	public void setAgentUname(String agentUname) {
		this.agentUname = agentUname;
	}

	public String getAgentPasswd() {
		return agentPasswd;
	}

	public void setAgentPasswd(String agentPasswd) {
		this.agentPasswd = agentPasswd;
	}	

	public Location getAgentLoc() {
		return agentLoc;
	}

	public void setAgentLoc(Location agentLoc) {
		this.agentLoc = agentLoc;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getAgentEmpId() {
		return agentEmpId;
	}

	public void setAgentEmpId(String agentEmpId) {
		this.agentEmpId = agentEmpId;
	}

	public String getAgentPhotopath() {
		return agentPhotopath;
	}

	public void setAgentPhotopath(String agentPhotopath) {
		this.agentPhotopath = agentPhotopath;
	}

	public String getAgentProofpath() {
		return agentProofpath;
	}

	public void setAgentProofpath(String agentProofpath) {
		this.agentProofpath = agentProofpath;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
	public String getReqRemarks() {
		return reqRemarks;
	}

	public void setReqRemarks(String reqRemarks) {
		this.reqRemarks = reqRemarks;
	}

	@Override
	public String toString() {
		return "LocalAgentReg [agentId=" + agentId + ", agentName=" + agentName + ", agentEmail=" + agentEmail
				+ ", agentMob=" + agentMob + ", agentDob=" + agentDob + ", agentGen=" + agentGen + ", agentAddr1="
				+ agentAddr1 + ", agentAddr2=" + agentAddr2 + ", agentPin=" + agentPin + ", agentCity=" + agentCity
				+ ", agentUname=" + agentUname + ", agentPasswd=" + agentPasswd + ", agentLoc=" + agentLoc
				+ ", user_type=" + user_type + ", agentEmpId=" + agentEmpId + ", agentPhotopath=" + agentPhotopath
				+ ", agentProofpath=" + agentProofpath + ", status=" + status + "]";
	}
	
	
}
