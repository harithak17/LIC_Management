package com.insurence.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
public class Policy {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int policyId;
	
	@ManyToOne
    @JoinColumn(name = "policy_category_id")
	private Category policyCategory;	
	
	@NotEmpty(message = "Name cannot be empty")
	@Size(min=2, max=30,message = "Size should be between 2 and 30 characters")
	private String policyName;
	
	@NotEmpty(message = "Code cannot be empty")
	@Size(min=2, max=30,message = "Size should be between 2 and 30 characters")
	private String policyCode;
	
	@NotEmpty(message = "Sumassurance amount cannot be empty")
	@Pattern(regexp="(^$|[0-9]*)",message = "Enter amount in Digits")
	private String policySumassurance;
	
	@NotEmpty(message = "Premium amount cannot be empty")
	@Pattern(regexp="(^$|[0-9]*)",message = "Enter amount in Digits")
	private String policyPremium;
	
	@NotEmpty(message = "Tenure cannot be empty")
	@Pattern(regexp="(^$|[0-9]{2})",message = "Enter Years in 2 Digits")
	private String policyTenure;
	
	private String policyDocpath;

	public int getPolicyId() {
		return policyId;
	}

	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}

	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}

	public String getPolicyCode() {
		return policyCode;
	}

	public void setPolicyCode(String policyCode) {
		this.policyCode = policyCode;
	}

	public String getPolicySumassurance() {
		return policySumassurance;
	}

	public void setPolicySumassurance(String policySumassurance) {
		this.policySumassurance = policySumassurance;
	}

	public String getPolicyPremium() {
		return policyPremium;
	}

	public void setPolicyPremium(String policyPremium) {
		this.policyPremium = policyPremium;
	}

	public String getPolicyTenure() {
		return policyTenure;
	}

	public void setPolicyTenure(String policyTenure) {
		this.policyTenure = policyTenure;
	}

	public String getPolicyDocpath() {
		return policyDocpath;
	}

	public void setPolicyDocpath(String policyDocpath) {
		this.policyDocpath = policyDocpath;
	}
	

	public Category getPolicyCategory() {
		return policyCategory;
	}

	public void setPolicyCategory(Category policyCategory) {
		this.policyCategory = policyCategory;
	}

	@Override
	public String toString() {
		return "Policy [policyId=" + policyId + ", policyName=" + policyName + ", policyCode=" + policyCode
				+ ", policySumassurance=" + policySumassurance + ", policyPremium=" + policyPremium + ", policyTenure="
				+ policyTenure + ", policyDocpath=" + policyDocpath + "]";
	}
	
	
	
}
