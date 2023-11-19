package com.TTSS03.Service;

import java.util.List;

import com.TTSS03.Entity.ScheduleTrainings;

public interface ScheduleTrainingsService {
	
	
	ScheduleTrainings saveOneTraining (ScheduleTrainings scheduleTrainings);
	
	List<ScheduleTrainings>getAllScheduledTrainings(ScheduleTrainings scheduleTrainings);

}
