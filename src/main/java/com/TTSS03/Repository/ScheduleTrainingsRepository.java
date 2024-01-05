package com.TTSS03.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.ScheduleTrainings;

public interface ScheduleTrainingsRepository extends JpaRepository<ScheduleTrainings, Integer> {
	
	@Query("SELECT ss FROM ScheduleTrainings ss WHERE ss.ref_planner_id = :ref_planner_id")
	List<ScheduleTrainings> findByRefId(@Param("ref_planner_id") String ref_planner_id);

	 @Query("SELECT t FROM ScheduleTrainings t WHERE curdate() BETWEEN t.apply_start_dt AND t.apply_end_dt")
	    List<ScheduleTrainings> findTrainingBetweenApplyDates();
}
