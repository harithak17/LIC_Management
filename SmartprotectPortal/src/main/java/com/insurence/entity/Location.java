package com.insurence.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;
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
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int locId;
	
	private String customCode;
	
	@NotBlank(message = "Please enter Location")
	@Size(min=2, max=30,message = "Size should be between 2 and 20")
	private String locName;

	@NotBlank(message = "Please enter Address")
	@Size(min=2, max=100,message = "Size should be between 2 and 100")
	private String locAdd;

	@NotEmpty(message = "Phone number cannot be empty")
	@Pattern(regexp="(^$|[0-9]{10})",message = "Enter 10 Digit mobile number")
	private String locMob;

	public int getLocId() {
		return locId;
	}

	public void setLocId(int locId) {
		this.locId = locId;
	}

	public String getLocName() {
		return locName;
	}

	public void setLocName(String locName) {
		this.locName = locName;
	}

	public String getLocAdd() {
		return locAdd;
	}

	public void setLocAdd(String locAdd) {
		this.locAdd = locAdd;
	}

	public String getLocMob() {
		return locMob;
	}

	public void setLocMob(String locMob) {
		this.locMob = locMob;
	}

	
	public String getCustomCode() {
		return customCode;
	}

	public void setCustomCode(String customCode) {
		this.customCode = customCode;
	}

	@Override
	public String toString() {
		return "Location [locId=" + locId + ", locName=" + locName + ", locAdd=" + locAdd + ", locMob=" + locMob + "]";
	}
	
	
}
