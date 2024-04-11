package com.insurence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insurence.entity.Location;
import com.insurence.repository.LocationRepository;

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
public class LocationService {

	@Autowired
	LocationRepository locRepo;
	
	public Location saveLocationdetails(Location loc) {
		loc=locRepo.save(loc);
		loc.setCustomCode("LOC"+loc.getLocId()+"-"+loc.getLocName().substring(0, 3).toUpperCase());
		return locRepo.save(loc);
	}
	
	public List<Location> getAllLocations() {
		return locRepo.findAll();
	}
	
	public Location getLocById(int id) {
		return locRepo.findById(id).get();
	}
	
	public void deleteLoc(int id) {
		locRepo.deleteById(id);
	}
	
	public void editLocationdetails(Location loc) {
		boolean isTrue= locRepo.findById(loc.getLocId()).isPresent();
		if(isTrue)
		{
			locRepo.save(loc);
		}
	}
}
