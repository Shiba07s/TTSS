package com.TTSS03.Service;

import java.util.List;

import com.TTSS03.Entity.ScheduleTrainings;

public interface ScheduleTrainingsService {
	
	
	ScheduleTrainings saveOneTraining (ScheduleTrainings scheduleTrainings);
	
	List<ScheduleTrainings>getAllScheduledTrainings(ScheduleTrainings scheduleTrainings);
	
	List<ScheduleTrainings> getAllTrainingsBetweenYearAndMonth(String tmonth,String tyear);
	
	List<ScheduleTrainings> getAllScheduledTrainings1(ScheduleTrainings scheduleTrainings) ;
	
	List<ScheduleTrainings> getAllScheduledTrainingsbyid(String ref_planner_id);

}
