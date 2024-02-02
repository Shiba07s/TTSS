package com.TTSS03.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.ComponentMaster;
import com.TTSS03.Service.ComponentMasterService;

@RestController
@RequestMapping("/api")
public class ComponentMasterController {
	
	@Autowired
	ComponentMasterService ComponentMasterServ;
	
	@GetMapping("/components")
	public ResponseEntity<List<ComponentMaster>>findAllComponent(){
		List<ComponentMaster> findAll = ComponentMasterServ.findAll();
		
		return ResponseEntity.ok(findAll);
	}

}
