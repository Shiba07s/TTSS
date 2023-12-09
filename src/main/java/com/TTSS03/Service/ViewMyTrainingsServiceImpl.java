 package com.TTSS03.Service;


import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.ViewMyTrainings;
import com.TTSS03.Repository.AppliedTrainingsFromTraineeRepository;
import com.TTSS03.Repository.ScheduleTrainingsRepository;
import com.TTSS03.Repository.SearchVenueRepository;
import com.TTSS03.Repository.ViewMyTrainingsRepository;

import jakarta.transaction.Transactional;

@Service
public class ViewMyTrainingsServiceImpl implements ViewMyTrainingsService {

    @Autowired
    ViewMyTrainingsRepository ViewMyTrainingsRepo;

    @Autowired
    AppliedTrainingsFromTraineeRepository appliedTrainingsFromTraineeRepo;

    @Autowired
    ScheduleTrainingsRepository ScheduleTrainingsRepo;

    @Autowired
    SearchVenueRepository SearchVenueRepo;

    
	@Override
	public List<ViewMyTrainings> findByTreasuryId(String treasuryid) {
	   

	    return ViewMyTrainingsRepo.findByTreasuryId(treasuryid);
	}
	@Override
	public List<ViewMyTrainings> savemyTrainings(String treasuryid) {
	    List<Object[]> findTrainingDetailsByTreasuryId = ViewMyTrainingsRepo.findTrainingDetailsByTreasuryId(treasuryid);

	    // Process and save the results to your target table (ViewMyTrainings)
	    Set<ViewMyTrainings> uniqueTrainings = new HashSet<>();

	    for (Object[] result : findTrainingDetailsByTreasuryId) {
	        // Print the values at each index of the result array
	        for (int i = 0; i < result.length; i++) {
	            System.out.println("Index " + i + ": " + result[i]);
	        }

	        ViewMyTrainings viewMyTrainings = createViewMyTrainingsFromResultArray(result);

	        // Check if the combination of treasuryid and tname already exists
	        List<ViewMyTrainings> existingData = ViewMyTrainingsRepo.findByTreasuryIdAndTname(viewMyTrainings.getTreasuryid(), viewMyTrainings.getTname());

	        if (!existingData.isEmpty()) {
	            // Data exists, update it
	            ViewMyTrainings existingRecord = existingData.get(0); // Assuming there's only one record, adjust if needed

	            // Update existingRecord with new values from viewMyTrainings
	            // You may need to implement the update logic based on your requirements
	            existingRecord.setTname(viewMyTrainings.getTname());
	            existingRecord.setTmode(viewMyTrainings.getTmode());
	            existingRecord.setTdescription(viewMyTrainings.getTdescription());
	            existingRecord.setMaplocation(viewMyTrainings.getMaplocation());
	            existingRecord.setEnddate(viewMyTrainings.getEnddate());
	            existingRecord.setResourcetype(viewMyTrainings.getResourcetype());
	            existingRecord.setStartdate(viewMyTrainings.getStartdate());
	            existingRecord.setTagency(viewMyTrainings.getTagency());
	            existingRecord.setTrainername(viewMyTrainings.getTrainername());
	            existingRecord.setTreasuryid(viewMyTrainings.getTreasuryid());
	            existingRecord.setVaddress(viewMyTrainings.getVaddress());
	            existingRecord.setVcontact(viewMyTrainings.getVcontact());
	            existingRecord.setVname(viewMyTrainings.getVname());
	            // Update other fields as needed

	            // Then save the updated data
	            ViewMyTrainingsRepo.save(existingRecord);
	        } else {
	            // Data does not exist, add it to the set
	            uniqueTrainings.add(viewMyTrainings);
	        }
	    }

	    // Save all unique records in the set
	    return ViewMyTrainingsRepo.saveAll(uniqueTrainings);
	}


	private ViewMyTrainings createViewMyTrainingsFromResultArray(Object[] result) {
	    ViewMyTrainings viewMyTrainings = new ViewMyTrainings();
	    
	    viewMyTrainings.setTreasuryid(result[0].toString()); 
	    viewMyTrainings.setTname(result[1].toString());
	    viewMyTrainings.setVname(result[2].toString());
	    viewMyTrainings.setTmode(result[3].toString());
	    viewMyTrainings.setTdescription(result[4].toString());
	    viewMyTrainings.setStartdate(result[5].toString());
	    viewMyTrainings.setEnddate(result[6].toString());
	    viewMyTrainings.setVaddress(result[7].toString());
	    viewMyTrainings.setMaplocation(result[10].toString());
	    viewMyTrainings.setVcontact(result[8].toString()+" "+result[9].toString());
	    viewMyTrainings.setResourcetype(result[11].toString());

	    return viewMyTrainings;
	}
	
	//get waiting for waiting-for-approval list
	
	public List<Map<String, Object>> getCustomData() {
		List<Object[]> result = ViewMyTrainingsRepo.findCustomData();
 
		return result.stream().map(row -> {
			Map<String, Object> rowData = new HashMap<>();
			rowData.put("TrainingName", row[0]);
			rowData.put("TrainingMode", row[1]);
			rowData.put("TreasuryId", row[2]);
			rowData.put("Description", row[3]);
			rowData.put("vaddress", row[4]);
			rowData.put("MobileNumber", row[5]);
			rowData.put("Designation", row[6]);
			rowData.put("DOB", row[7]);
			rowData.put("FullName", row[8]);
			rowData.put("SchoolUdiseCode", row[9]);
			rowData.put("District", row[10]);
			rowData.put("Applydate", row[11]);
			rowData.put("ResourceType", row[12]);
			return rowData;
		}).collect(Collectors.toList());
	}
	
	//get waiting for approved list
	@Override
	public List<Map<String, Object>> getAppovedData() {
		List<Object[]> result = ViewMyTrainingsRepo.findApprovedData();
		return result.stream().map(row -> {
			Map<String, Object> rowData = new HashMap<>();
			rowData.put("TrainingName", row[0]);
			rowData.put("TrainingMode", row[1]);
			rowData.put("TreasuryId", row[2]);
			rowData.put("Description", row[3]);
			rowData.put("vaddress", row[4]);
			rowData.put("secondlevelapproval", row[5]);
			rowData.put("MobileNumber", row[6]);
			rowData.put("Designation", row[7]);
			rowData.put("DOB", row[8]);
			rowData.put("FullName", row[9]);
			rowData.put("SchoolUdiseCode", row[10]);
			rowData.put("District", row[11]);
			rowData.put("Applydate", row[12]);
			rowData.put("ResourceType", row[13]);
			return rowData;
		}).collect(Collectors.toList());

	}
	
	//get waiting for rejected list
	@Override
	public List<Map<String, Object>> getRejectedData() {
		List<Object[]> result = ViewMyTrainingsRepo.findRejectedData();
		return result.stream().map(row -> {
			Map<String, Object> rowData = new HashMap<>();
			rowData.put("TrainingName", row[0]);
			rowData.put("TrainingMode", row[1]);
			rowData.put("TreasuryId", row[2]);
			rowData.put("Description", row[3]);
			rowData.put("vaddress", row[4]);
			rowData.put("Remarks", row[5]);
			rowData.put("MobileNumber", row[6]);
			rowData.put("Designation", row[7]);
			rowData.put("DOB", row[8]);
			rowData.put("FullName", row[9]);
			rowData.put("SchoolUdiseCode", row[10]);
			rowData.put("District", row[11]);
			rowData.put("Applydate", row[12]);
			rowData.put("ResourceType", row[13]);
			return rowData;
		}).collect(Collectors.toList());
		
	}
	
	@Override
	@Transactional
	public void updateStatusToApproved(String treasuryId, String trainingName) {
		
			ViewMyTrainingsRepo.updateStatusByTreasuryId(treasuryId,trainingName);
			
	}
	
	@Override
	@Transactional
	public void rejectStatusToApproved(String treasuryId,String trainingName) {
		ViewMyTrainingsRepo.rejectStatusByTreasuryId(treasuryId,trainingName);
	}
	
	
	//count waiting for approval list teachers
	@Override
	public long countWaitingForApprovalUsersList() {
		return ViewMyTrainingsRepo.countByStatusWaitingForApproval();
	}
	
	//count for approved list teachers
	@Override
	public long countApprovedUsersList() {
		return ViewMyTrainingsRepo.countByStatusAppoved();
	}
	@Override
	public long countRejectedUsersList() {
		return ViewMyTrainingsRepo.countByStatusRejected();
	}
	
	 public void updateStatusAndRemarks(String treasuryId, String trainingName, String remarks) {
	          ViewMyTrainingsRepo.updateStatusAndRemarks(treasuryId, trainingName, remarks);
	    }
	 
	 public void updateStatusAndRemarksForSecondLevelApproval(String treasuryId, String trainingName, String secondlevelapproval) {
		 ViewMyTrainingsRepo.updateStatusAndRemarksForSecondLevelApproval(treasuryId, trainingName, secondlevelapproval);
	 }
	
}


	


	






	
	

	



