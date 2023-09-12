package com.example.farmingholiday.repository;

import com.example.farmingholiday.domain.FarmingHoliday;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FarmingHolidayRepository extends JpaRepository<FarmingHoliday,Long> {
}