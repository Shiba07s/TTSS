package com.TTSS03.Service;

import java.util.List;
import java.util.Map;

import com.TTSS03.Entity.ViewMyTrainings;

public interface ViewMyTrainingsService {

	List<ViewMyTrainings> savemyTrainings(String treasuryid);

	List<ViewMyTrainings> findByTreasuryId(String treasuryid);

	List<Map<String, Object>> getCustomData();

	List<Map<String, Object>> getAppovedData();
	
	List<Map<String, Object>> getRejectedData();

	void updateStatusToApproved(String treasuryId, String trainingName);

	void rejectStatusToApproved(String treasuryId, String trainingName);

	long countWaitingForApprovalUsersList();

	long countApprovedUsersList();

	long countRejectedUsersList();

	void updateStatusAndRemarks(String treasuryId, String trainingName, String remarks);

	void updateStatusAndRemarksForSecondLevelApproval(String treasuryId, String trainingName,
			String secondlevelapproval);

	/**
	 * @param treasuryid
	 * @param ref_planner_id
	 * @param vid
	 * @return
	 */

}
