package com.insurence.entity;

import java.util.Date;
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
public class PolicyHolderReg {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int clientId;
	
	@NotEmpty(message = "Name cannot be empty")
	@Size(min=2, max=30,message = "Size should be between 2 and 30 characters")
	private String clientName;
	
	@Email(message = "Email is not valid", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
	@NotEmpty(message = "Email cannot be empty")
	private String clientEmail;
	
	@NotEmpty(message = "Mobile number cannot be empty")
	@Pattern(regexp="(^$|[0-9]{10})",message = "Enter 10 Digit mobile number")
	private String clientMob;
//	@DateTimeFormat(pattern = "dd-MM-yyyy")
	private Date clientDob;
	
	@NotEmpty(message = "Choose Gender")
	private String clientGen;
	
	@NotEmpty(message = "Addressline cannot be empty")
	@Size(min=2, max=30,message = "Size should be between 2 and 50 characters")
	private String clientAddr1;	
	
	private String clientAddr2;
	
	@NotEmpty(message = "Pincode cannot be empty")
	@Pattern(regexp="(^$|[0-9]{6})",message = "Enter 6 Digit Pincode")
	private String clientPin;
	
	@NotEmpty(message = "City cannot be empty")
	@Size(min=2, max=20,message = "Size should be beatween 2 and 20 characters")
	private String clientCity;
	
//	@NotEmpty(message = "Username cannot be empty")
//	@Pattern(regexp = "^[a-zA-Z0-9]{6,12}$",
//            message = "Username must be of 6 to 12 length with no special characters")
	private String clientUID;
	
//	@NotEmpty(message = "Password cannot be empty")
//	@Pattern(regexp = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}",
//            message = "Password must contain atleast 1 uppercase, 1 lowercase, 1 special character and 1 digit ")
	private String clientPasswd;
	
	private String user_type;
	@ManyToOne
    @JoinColumn(name = "client_reg_agent")
	private LocalAgentReg client_regAgent;
	
//	@NotNull
//	@Size(min=0, max=50)
	private String clientPhotopath;	
	private String clientProofpath;
//	private MultipartFile ClientPhotopath;
	private String status;
	
	public int getClientId() {
		return clientId;
	}
	public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getClientEmail() {
		return clientEmail;
	}
	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}
	public String getClientMob() {
		return clientMob;
	}
	public void setClientMob(String clientMob) {
		this.clientMob = clientMob;
	}
	
	public Date getClientDob() {
		return clientDob;
	}
	public void setClientDob(Date clientDob) {
		this.clientDob = clientDob;
	}
	//	public String getClientDob() {
//		return clientDob;
//	}
//	public void setClientDob(String clientDob) {
//		this.clientDob = clientDob;
//	}
	public String getClientGen() {
		return clientGen;
	}
	public void setClientGen(String clientGen) {
		this.clientGen = clientGen;
	}
	public String getClientAddr1() {
		return clientAddr1;
	}
	public void setClientAddr1(String clientAddr1) {
		this.clientAddr1 = clientAddr1;
	}
	public String getClientAddr2() {
		return clientAddr2;
	}
	public void setClientAddr2(String clientAddr2) {
		this.clientAddr2 = clientAddr2;
	}
	public String getClientPin() {
		return clientPin;
	}
	public void setClientPin(String clientPin) {
		this.clientPin = clientPin;
	}
	public String getClientCity() {
		return clientCity;
	}
	public void setClientCity(String clientCity) {
		this.clientCity = clientCity;
	}
	public String getClientPasswd() {
		return clientPasswd;
	}
	public void setClientPasswd(String clientPasswd) {
		this.clientPasswd = clientPasswd;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}	
 
	public String getClientPhotopath() {
		return clientPhotopath;
	}
	public void setClientPhotopath(String clientPhotopath) {
		this.clientPhotopath = clientPhotopath;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getClientUID() {
		return clientUID;
	}
	public void setClientUID(String clientUID) {
		this.clientUID = clientUID;
	}
	
	
	
	public LocalAgentReg getClient_regAgent() {
		return client_regAgent;
	}
	public void setClient_regAgent(LocalAgentReg client_regAgent) {
		this.client_regAgent = client_regAgent;
	}
	public String getClientProofpath() {
		return clientProofpath;
	}
	public void setClientProofpath(String clientProofpath) {
		this.clientProofpath = clientProofpath;
	}
	@Override
	public String toString() {
		return "PolicyHolderReg [clientId=" + clientId + ", clientName=" + clientName + ", clientEmail=" + clientEmail
				+ ", clientMob=" + clientMob + ", clientDob=" + clientDob + ", clientGen=" + clientGen
				+ ", clientAddr1=" + clientAddr1 + ", clientAddr2=" + clientAddr2 + ", clientPin=" + clientPin
				+ ", clientCity=" + clientCity + ", clientUID=" + clientUID + ", clientPasswd=" + clientPasswd
				+ ", user_type=" + user_type + ", client_regAgent=" + client_regAgent + ", clientPhotopath="
				+ clientPhotopath + ", clientProofpath=" + clientProofpath + ", status=" + status + "]";
	}
	
	
	
}
