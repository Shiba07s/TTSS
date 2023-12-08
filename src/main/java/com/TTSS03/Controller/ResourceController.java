package com.TTSS03.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.Resource;
import com.TTSS03.Service.ResourceService;

@RestController
@RequestMapping("/api")
public class ResourceController {
	@Autowired
	private ResourceService resourceService;
	@GetMapping("/search/resource")
	public ResponseEntity<List<Resource>> getResource(Resource resource){
		List<Resource> allResouceData = resourceService.getAllResouceData(resource);
		return new ResponseEntity<List<Resource>>(allResouceData,HttpStatus.OK);
	}
}