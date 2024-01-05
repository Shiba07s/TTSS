package com.TTSS03.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.ScheduleTrainings;
import com.TTSS03.Repository.ScheduleTrainingsRepository;

@Service
public class ScheduleTrainingsServiceImpl implements ScheduleTrainingsService {
	
	@Autowired
	private ScheduleTrainingsRepository ScheduleTrainingsRepo;

	@Override
	public ScheduleTrainings saveOneTraining(ScheduleTrainings scheduleTrainings) {
		// TODO Auto-generated method stub
		return ScheduleTrainingsRepo.save(scheduleTrainings);
	}

	@Override
	public List<ScheduleTrainings> getAllScheduledTrainings(ScheduleTrainings scheduleTrainings) {
		// TODO Auto-generated method stub
		
		List<ScheduleTrainings> findTrainingBetweenApplyDates = ScheduleTrainingsRepo.findTrainingBetweenApplyDates();
		return findTrainingBetweenApplyDates;
	}

}
