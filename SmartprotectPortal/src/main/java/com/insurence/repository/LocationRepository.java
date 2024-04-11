package com.insurence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.insurence.entity.Location;

public interface LocationRepository extends JpaRepository<Location,Integer>{

}
