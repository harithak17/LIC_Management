package com.insurence.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insurence.entity.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment, Integer>{

}
