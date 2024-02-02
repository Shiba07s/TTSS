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
	
	@Override
	public List<ScheduleTrainings> getAllTrainingsBetweenYearAndMonth(String tmonth,String tyear){
		List<ScheduleTrainings> findTrainingBetweenMonthYear = ScheduleTrainingsRepo.findTrainingBetweenMonthYear(tmonth, tyear);
		
		return findTrainingBetweenMonthYear;
		
	}
	
	@Override
	public List<ScheduleTrainings> getAllScheduledTrainings1(ScheduleTrainings scheduleTrainings) {
		List<ScheduleTrainings> findAll = ScheduleTrainingsRepo.findTrainingBetweenApplyStartDateToTrainingStartdate();
		return findAll;
	}

	@Override
	public List<ScheduleTrainings> getAllScheduledTrainingsbyid(String ref_planner_id) {
		// TODO Auto-generated method stub
		return ScheduleTrainingsRepo.findByRefId(ref_planner_id);
	}


}
