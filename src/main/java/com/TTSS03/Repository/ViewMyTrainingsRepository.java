package com.TTSS03.Repository;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.NominateTrainings;
import com.TTSS03.Entity.ViewMyTrainings;

import jakarta.transaction.Transactional;

public interface ViewMyTrainingsRepository extends JpaRepository<ViewMyTrainings, Integer> {

	@Query("SELECT sv FROM ViewMyTrainings sv WHERE sv.treasuryid = :treasuryid")
	List<ViewMyTrainings> findByTreasuryId(@Param("treasuryid") String treasuryid);


	@Query("SELECT  mt.treasuryid,tm.tname, vm.vname, tm.tmode, tm.tdescription, tm.training_start_dt, tm.training_end_dt, vm.vaddress, vm.vcontactno, vm.vcontactmailid, vm.maplocation,tm.resourcetype "
			+ "FROM AppliedTrainingsFromTrainee mt "
			+ "JOIN ScheduleTrainings tm ON mt.ref_planner_id = tm.ref_planner_id "
			+ "JOIN SearchVenue vm ON mt.venueid = vm.vid " + "WHERE mt.treasuryid = :treasuryid and mt.ref_planner_id = tm.ref_planner_id and mt.venueid = vm.vid")
	List<Object[]> findTrainingDetailsByTreasuryId(@Param("treasuryid") String treasuryid );
	
	
	//get Data for waiting-for-approval list    
	@Query(value = "SELECT mt.tname, mt.tmode,  mt.treasuryid, mt.tdescription,mt.vaddress,tm.mobilenumberteacher,tm.desig,tm.DOB,tm.teacher_name,tm.school_code,tm.district_name,mt.applydateandtime,mt.resourcetype, mt.ref_planner_id "
			+ "FROM mytrainings mt " + "JOIN tteacher_master tm ON mt.treasuryid = tm.treasuryid "
			+ "WHERE mt.status = 'waiting for approval'", nativeQuery = true)
	List<Object[]> findCustomData();

	//get Data for approved list    
	@Query(value = "SELECT mt.tname, mt.tmode, mt.treasuryid, mt.tdescription,mt.vaddress, mt.secondlevelapproval ,tm.mobilenumberteacher,tm.desig,tm.DOB,tm.teacher_name,tm.school_code,tm.district_name,mt.applydateandtime,mt.resourcetype,mt.ref_planner_id  "
			+ "FROM mytrainings mt " + "JOIN tteacher_master tm ON mt.treasuryid = tm.treasuryid "
			+ "WHERE mt.status ='approved'", nativeQuery = true)
	List<Object[]> findApprovedData();
	
	
	//get Data for rejected list    
	@Query(value = "SELECT mt.tname, mt.tmode, mt.treasuryid, mt.tdescription, mt.vaddress, mt.remarks, " +
            "tm.mobilenumberteacher, tm.desig, tm.DOB, tm.teacher_name, tm.school_code, tm.district_name, " +
            "mt.applydateandtime, mt.resourcetype, mt.ref_planner_id " +
            "FROM mytrainings mt " +
            "JOIN tteacher_master tm ON mt.treasuryid = tm.treasuryid " +
            "WHERE mt.status = 'rejected'", nativeQuery = true)
List<Object[]> findRejectedData();


	@Modifying
	@Query("UPDATE ViewMyTrainings v SET v.status = 'approved' WHERE v.treasuryid = :treasuryId  AND v.ref_planner_id = :refPlannerId")
	void updateStatusByTreasuryId(@Param("treasuryId") String treasuryId, @Param("refPlannerId") String refPlannerId);

	@Query("SELECT a FROM ViewMyTrainings a WHERE a.treasuryid = :treasuryid AND a.tname = :tname")
	List<ViewMyTrainings> findByTreasuryIdAndTname(@Param("treasuryid") String treasuryid,
			@Param("tname") String tname);

	@Modifying
	@Query("UPDATE ViewMyTrainings v SET v.status = 'rejected' WHERE v.treasuryid = :treasuryId  AND v.ref_planner_id = :refPlannerId")
	void rejectStatusByTreasuryId(@Param("treasuryId") String treasuryId, @Param("refPlannerId") String refPlannerId);
	
	
	//
	@Query("SELECT COUNT(e) FROM ViewMyTrainings e WHERE e.status = 'waiting for approval'")
    long countByStatusWaitingForApproval();
	
	
	//
	@Query("SELECT COUNT(e) FROM ViewMyTrainings e WHERE e.status = 'approved'")
	long countByStatusAppoved();
	
	
	//
	@Query("SELECT COUNT(e) FROM ViewMyTrainings e WHERE e.status = 'rejected'")
	long countByStatusRejected();
	
	
	//
	@Modifying
    @Transactional
    @Query("UPDATE ViewMyTrainings t SET t.status = 'rejected', t.remarks = :remarks WHERE t.treasuryid = :treasuryId AND t.ref_planner_id = :refPlannerIds")
    void updateStatusAndRemarks(@Param("treasuryId") String treasuryId, @Param("refPlannerIds") String refPlannerIds, @Param("remarks") String remarks);
	
	
	//
	@Modifying
	@Transactional
	@Query("UPDATE ViewMyTrainings m SET m.status = 'approved', m.secondlevelapproval = :secondlevelapproval WHERE m.treasuryid = :treasuryId AND m.tname = :trainingName")
	void updateStatusAndRemarksForSecondLevelApproval(@Param("treasuryId") String treasuryId, @Param("trainingName") String trainingName, @Param("secondlevelapproval") String secondlevelapproval);

	
	// self-attended trainees will show on waiting-for-approval radio button table
	@Query(value = "SELECT mt.tname, mt.tmode, mt.treasuryid, mt.tdescription,mt.vaddress, mt.secondlevelapproval ,tm.mobilenumberteacher,tm.desig,tm.DOB,tm.teacher_name,tm.school_code,tm.district_name,mt.applydateandtime,mt.resourcetype,mt.ref_planner_id "
			+ "FROM mytrainings mt " + "JOIN tteacher_master tm ON mt.treasuryid = tm.treasuryid "
			+ "WHERE mt.appliedtype ='self' AND mt.status='Waiting For Approval'", nativeQuery = true)
	List<Object[]> findSelfAttendedTeachersData();
	
	// nominate trainees will show on waiting-for-approval radio button table
	@Query(value = "SELECT mt.treasuryid, tm.tdescription, tm.ref_planner_id, mt.mobilenumberteacher, mt.designation, mt.dob, tm.tname, tm.tmode, tm.vaddress, tm.resourcetype, mt.teacher_name, mt.school_code, mt.district_name, mt.applydateandtime " +
	        "FROM mytrainings mt " +
	        "JOIN ttransactiontraining tm ON mt.ref_planner_id = tm.ref_planner_id " +
	        "WHERE mt.appliedtype = 'Nominated' AND mt.status='Waiting For Approval'", nativeQuery = true)
	List<Object[]> findNominatedTrainings();
	

    @Query(value = "SELECT mt.treasuryid, mt.mobilenumberteacher, mt.teacher_name, mt.designation, mt.dob, tm.resourcetype, mt.district_name, mt.school_code, " +
            "tm.tname, tm.tmode, tm.tdescription, tm.vaddress, mt.ref_planner_id, mt.appliedtype, mt.remarks ,mt.applydateandtime "+
            "FROM mytrainings mt " +
            "JOIN ttransactiontraining tm ON tm.ref_planner_id = mt.ref_planner_id " +
            "WHERE mt.status = 'rejected'", nativeQuery = true)
    List<Map<String, Object>>findRejectedDataList();
    
    @Query(value = "SELECT mt.treasuryid, tr.mobilenumberteacher, tr.teacher_name, tr.desig, tr.dob, tm.resourcetype, " +
            "tr.district_name, tr.school_code, tm.tname, tm.tmode, tm.tdescription, tm.vaddress, mt.ref_planner_id, " +
            "mt.appliedtype, mt.remarks, mt.applydateandtime " +
            "FROM mytrainings mt, ttransactiontraining tm, tteacher_master tr " +
            "WHERE tm.ref_planner_id = mt.ref_planner_id AND mt.treasuryid = tr.treasuryid " +
            "AND mt.status = 'approved'", nativeQuery = true)
    List<Map<String, Object>>findApprovedDataList();
    
   // NominateTrainings findByTreasuryidAndRefPlannerId(String treasuryid, String ref_planner_id);

}
