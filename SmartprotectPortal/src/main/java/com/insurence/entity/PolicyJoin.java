package com.insurence.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PolicyJoin {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int regId;
	
	@ManyToOne
    @JoinColumn(name = "clientName_id")
	private PolicyHolderReg clientName;
	
	
	@ManyToOne
    @JoinColumn(name = "policyName_id")
	private Policy clientPolicy;	
	
	@ManyToOne
    @JoinColumn(name = "policyAgent_id")
	private LocalAgentReg agent_id;
	
	@NotEmpty(message = "Choose Payment")
	private String paymentMode;
	
	@NotEmpty(message = "Feild can't be Empty")
	private String nominee;
	
	@NotEmpty(message = "Choose relation")
	private String nomineeRelation;
	
	@NotEmpty(message = "Select birth date")
	private String nomineeDob;
	
	private String status;
	
	private String reqRemarks;

	public int getRegId() {
		return regId;
	}

	public void setRegId(int regId) {
		this.regId = regId;
	}

	public PolicyHolderReg getClientName() {
		return clientName;
	}

	public void setClientName(PolicyHolderReg clientName) {
		this.clientName = clientName;
	}

	public Policy getClientPolicy() {
		return clientPolicy;
	}

	public void setClientPolicy(Policy clientPolicy) {
		this.clientPolicy = clientPolicy;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getNominee() {
		return nominee;
	}

	public void setNominee(String nominee) {
		this.nominee = nominee;
	}

	public String getNomineeRelation() {
		return nomineeRelation;
	}

	public void setNomineeRelation(String nomineeRelation) {
		this.nomineeRelation = nomineeRelation;
	}

	public String getNomineeDob() {
		return nomineeDob;
	}

	public void setNomineeDob(String nomineeDob) {
		this.nomineeDob = nomineeDob;
	}

	public LocalAgentReg getAgent_name() {
		return agent_id;
	}

	public void setAgent_name(LocalAgentReg agent_name) {
		this.agent_id = agent_name;
	}
 
	
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}	
	

	public LocalAgentReg getAgent_id() {
		return agent_id;
	}

	public void setAgent_id(LocalAgentReg agent_id) {
		this.agent_id = agent_id;
	}

	public String getReqRemarks() {
		return reqRemarks;
	}

	public void setReqRemarks(String reqRemarks) {
		this.reqRemarks = reqRemarks;
	}

	@Override
	public String toString() {
		return "PolicyJoin [regId=" + regId + ", clientName=" + clientName + ", clientPolicy=" + clientPolicy
				+ ", agent_name=" + agent_id + ", paymentMode=" + paymentMode + ", nominee=" + nominee
				+ ", nomineeRelation=" + nomineeRelation + ", nomineeDob=" + nomineeDob + "]";
	}
	
	
	
}
