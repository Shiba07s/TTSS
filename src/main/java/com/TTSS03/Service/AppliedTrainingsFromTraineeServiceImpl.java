package com.TTSS03.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.AppliedTrainingsFromTrainee;
import com.TTSS03.Repository.AppliedTrainingsFromTraineeRepository;

@Service
public class AppliedTrainingsFromTraineeServiceImpl implements AppliedTrainingsFromTraineeService {
	
	
	@Autowired
	AppliedTrainingsFromTraineeRepository appliedTrainingsFromTraineeRepository;

	@Override
	public AppliedTrainingsFromTrainee saveEmployeeTrainings(AppliedTrainingsFromTrainee appliedTrainingsFromTrainee) {
		// TODO Auto-generated method stub
		return appliedTrainingsFromTraineeRepository.save(appliedTrainingsFromTrainee);
	}

}
