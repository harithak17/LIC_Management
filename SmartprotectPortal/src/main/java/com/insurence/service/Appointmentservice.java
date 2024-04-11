package com.insurence.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insurence.entity.Appointment;
import com.insurence.repository.AppointmentRepository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Service
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Appointmentservice {

	@Autowired
	AppointmentRepository appRepo;
	public Appointment saveAppointmentreq(Appointment message) {
		return appRepo.save(message);
	}
	
}
