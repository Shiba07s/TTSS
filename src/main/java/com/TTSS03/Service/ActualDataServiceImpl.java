package com.TTSS03.Service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.ActualData;
import com.TTSS03.Repository.ActualDataRepository;

import jakarta.transaction.Transactional;

@Service
public class ActualDataServiceImpl implements ActualDataService {
	
	@Autowired
	ActualDataRepository actualDataRepo;

	@Override
	public ActualData saveOneData(ActualData actualData) {
		return actualDataRepo.save(actualData);
	}

	@Override
	public List<ActualData> getAll() {
		return actualDataRepo.findActiveData();
	}

	@Override
	@Transactional
    public ActualData updateOne(int refplannerid, ActualData actualData) {
        int updatedRows = actualDataRepo.updateActualData(
                refplannerid,
                actualData.getTmonth(),
                actualData.getTyear(),
                actualData.getTrainingregstartdt(),
                actualData.getTrainingregenddt(),
                actualData.getTagency(),
                actualData.getTname(),
                actualData.getTsubject(),
                actualData.getTcategory(),
                actualData.getTtargetgroup(),
                actualData.getPreferdlocation(),
                actualData.getTdescription(),
                actualData.getTgrade(),
                actualData.getNumberofstakeholder(),
                actualData.getNumberdayneeded(),
                actualData.getTmode(),
                actualData.getThoursperday(),
                actualData.getTotalhours(),
                actualData.getTstatus()
        );

        if (updatedRows > 0) {
            // Fetch and return the updated ActualData
             Optional<ActualData> findById = actualDataRepo.findById(refplannerid);
            return findById.orElse(null);
        } else {
            // Handle update failure, return null or throw an exception
            return null;
        }
    }

	@Override
	@Transactional
	public void deactivateTraining(String refplannerid) {
		// TODO Auto-generated method stub
		actualDataRepo.deactivateTraining(refplannerid);
	}
}
