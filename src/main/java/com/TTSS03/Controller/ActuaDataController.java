package com.TTSS03.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.ActualData;
import com.TTSS03.Service.ActualDataService;

@RestController
@RequestMapping("/api")
public class ActuaDataController {
	
	@Autowired
	ActualDataService actualDataService;
	
	@GetMapping("/getdata")
	public ResponseEntity<List<ActualData>> getallplanedtrainings(){
		List<ActualData> all = actualDataService.getAll();
		return ResponseEntity.ok(all);
		
	}
	
	@PostMapping("/savedata")
	public ResponseEntity<ActualData>createNewRecord(@RequestBody ActualData actualData){
		ActualData saveOneData = actualDataService.saveOneData(actualData);
		
		return ResponseEntity.ok(saveOneData);
	}
	
	@PutMapping("/edit/{refplannerid}")
	public ResponseEntity<ActualData>updateOneRecord(@PathVariable int refplannerid,@RequestBody ActualData actualData){
		
		ActualData updateOne = actualDataService.updateOne(refplannerid, actualData);
		
		return ResponseEntity.ok(updateOne);
	}
	
	 @PostMapping("/deactivate/{refplannerid}")
	    public void deactivateTraining(@PathVariable String refplannerid) {
		 actualDataService.deactivateTraining(refplannerid);
	    }

}
