package com.insurence.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
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
public class Contactus {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int msgId;
	
	@NotNull
	@Size(min=2, max=30)
	private String msgName;
	
	@NotBlank
    @Email(message = "Please enter a valid e-mail address")
	private String msgEmail;
	
	@NotNull
	@Size(min=2, max=50)
	private String msgSubject;
	
	@NotNull
	@Size(min=2, max=200)
	private String msgMessage;
	
	
	public int getMsgId() {
		return msgId;
	}
	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}
	public String getMsgName() {
		return msgName;
	}
	public void setMsgName(String msgName) {
		this.msgName = msgName;
	}
	public String getMsgEmail() {
		return msgEmail;
	}
	public void setMsgEmail(String msgEmail) {
		this.msgEmail = msgEmail;
	}
	public String getMsgSubject() {
		return msgSubject;
	}
	public void setMsgSubject(String msgSubject) {
		this.msgSubject = msgSubject;
	}
	public String getMsgMessage() {
		return msgMessage;
	}
	public void setMsgMessage(String msgMessage) {
		this.msgMessage = msgMessage;
	}
	
	
}
