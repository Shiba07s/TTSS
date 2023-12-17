package com.TTSS03.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.ScheduleTrainings;
import com.TTSS03.Service.ScheduleTrainingsService;

@RestController
@RequestMapping("/api")
public class ScheduleTrainingsController {

    @Autowired
    ScheduleTrainingsService scheduleTrainingsService;

    @PostMapping("/schedule")
    public ResponseEntity<String> scheduleOneTraining(@RequestBody ScheduleTrainings scheduleTrainings) {
        scheduleTrainingsService.saveOneTraining(scheduleTrainings);
        return ResponseEntity.ok("saved Successfully");
    }
    
    
    @GetMapping("/scheduledTrainings")
    public ResponseEntity<List<ScheduleTrainings>>getAllTrainings(ScheduleTrainings scheduleTrainings){
    	
    	List<ScheduleTrainings> trainings = scheduleTrainingsService.getAllScheduledTrainings(scheduleTrainings);
    	return ResponseEntity.ok(trainings);
    	
    }
    
}


