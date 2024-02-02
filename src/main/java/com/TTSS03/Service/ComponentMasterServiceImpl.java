package com.TTSS03.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.ComponentMaster;
import com.TTSS03.Repository.ComponentMasterRepository;

@Service
public class ComponentMasterServiceImpl implements ComponentMasterService {
	
	@Autowired
	ComponentMasterRepository ComponentMasterRepo;

	@Override
	public List<ComponentMaster> findAll() {
		// TODO Auto-generated method stub
		return ComponentMasterRepo.findAll();
	}

}
