package com.TTSS03.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.Resource;
import com.TTSS03.Repository.ResourceRepository;

@Service
public class ResourceServiceImpl implements ResourceService {
	
	@Autowired
	private ResourceRepository resourceRepo;
 
	@Override
	public List<Resource> getAllResouceData(Resource resource) {
		return resourceRepo.findAll();
	}
 
}
