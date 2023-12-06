package com.TTSS03.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.TreasuryGovt;
import com.TTSS03.Service.TreasuryGovtService;
@RestController
@RequestMapping("/api")
public class TreasuryGovtEmpController {
	
	@Autowired
	TreasuryGovtService treasuryGovtService;
	
	
	
	@GetMapping("/findteacher")
	public ResponseEntity<List<TreasuryGovt>>findteacherByTreasuryId(@RequestParam String treasuryid){
		List<TreasuryGovt> byTreasuryId = treasuryGovtService.getByTreasuryId(treasuryid);
		
		return ResponseEntity.ok(byTreasuryId);
	}

}
