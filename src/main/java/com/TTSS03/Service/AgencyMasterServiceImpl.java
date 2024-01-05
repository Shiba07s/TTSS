package com.TTSS03.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.AgencyMaster;
import com.TTSS03.Repository.AgencyMasterRepository;

@Service
public class AgencyMasterServiceImpl implements AgencyMasterService{
	
	@Autowired
	AgencyMasterRepository AgencyMasterRepo;

	@Override
	public List<AgencyMaster> getAllAgency() {
		// TODO Auto-generated method stub
		return AgencyMasterRepo.findAll();
	}

}
