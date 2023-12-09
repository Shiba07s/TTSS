package com.TTSS03.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

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

	@Query(value = "SELECT mt.tname, mt.tmode, mt.treasuryid, mt.tdescription,mt.vaddress,tm.mobilenumberteacher,tm.desig,tm.DOB,tm.teacher_name,tm.school_code,tm.district_name,mt.applydateandtime,mt.resourcetype "
			+ "FROM mytrainings mt " + "JOIN tteacher_master tm ON mt.treasuryid = tm.treasuryid "
			+ "WHERE mt.status = 'waiting for approval'", nativeQuery = true)
	List<Object[]> findCustomData();

	@Query(value = "SELECT mt.tname, mt.tmode, mt.treasuryid, mt.tdescription,mt.vaddress, mt.secondlevelapproval ,tm.mobilenumberteacher,tm.desig,tm.DOB,tm.teacher_name,tm.school_code,tm.district_name,mt.applydateandtime,mt.resourcetype "
			+ "FROM mytrainings mt " + "JOIN tteacher_master tm ON mt.treasuryid = tm.treasuryid "
			+ "WHERE mt.status ='approved'", nativeQuery = true)
	List<Object[]> findApprovedData();
	
	
	//
	@Query(value = "SELECT mt.tname, mt.tmode, mt.treasuryid, mt.tdescription,mt.vaddress,mt.remarks, tm.mobilenumberteacher,tm.desig,tm.DOB,tm.teacher_name,tm.school_code,tm.district_name,mt.applydateandtime,mt.resourcetype "
			+ "FROM mytrainings mt " + "JOIN tteacher_master tm ON mt.treasuryid = tm.treasuryid "
			+ "WHERE mt.status = 'rejected'", nativeQuery = true)
	List<Object[]> findRejectedData();

	@Modifying
	@Query("UPDATE ViewMyTrainings v SET v.status = 'approved' WHERE v.treasuryid = :treasuryId  AND v.tname = :trainingName")
	void updateStatusByTreasuryId(@Param("treasuryId") String treasuryId, @Param("trainingName") String trainingName);

	@Query("SELECT a FROM ViewMyTrainings a WHERE a.treasuryid = :treasuryid AND a.tname = :tname")
	List<ViewMyTrainings> findByTreasuryIdAndTname(@Param("treasuryid") String treasuryid,
			@Param("tname") String tname);

	@Modifying
	@Query("UPDATE ViewMyTrainings v SET v.status = 'rejected' WHERE v.treasuryid = :treasuryId  AND v.tname = :trainingName")
	void rejectStatusByTreasuryId(@Param("treasuryId") String treasuryId, @Param("trainingName") String trainingName);
	
	
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
    @Query("UPDATE ViewMyTrainings t SET t.status = 'rejected', t.remarks = :remarks WHERE t.treasuryid = :treasuryId AND t.tname = :trainingName")
    void updateStatusAndRemarks(@Param("treasuryId") String treasuryId, @Param("trainingName") String trainingName, @Param("remarks") String remarks);
	
	
	//
	@Modifying
	@Transactional
	@Query("UPDATE ViewMyTrainings m SET m.status = 'approved', m.secondlevelapproval = :secondlevelapproval WHERE m.treasuryid = :treasuryId AND m.tname = :trainingName")
	void updateStatusAndRemarksForSecondLevelApproval(@Param("treasuryId") String treasuryId, @Param("trainingName") String trainingName, @Param("secondlevelapproval") String secondlevelapproval);


}
