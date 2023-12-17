package com.TTSS03.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.TeacherMaster;
import com.TTSS03.Entity.TreasuryGovt;

public interface TeacherMasterRepository extends JpaRepository<TeacherMaster, Integer> {

	
	//get district list
	@Query("SELECT DISTINCT t.district_name FROM TeacherMaster t")
	List<String> findDistinctDistrict();
	
	 @Query("SELECT DISTINCT t.mandal_name FROM TeacherMaster t WHERE t.district_name = :district")
	  List<String> findMandalNamesByDistrict(@Param("district") String district);
	
// search the data respective mandal under the district
	@Query(value = "SELECT tt.treasuryid, tt.mobilenumberteacher, tt.teacher_name, tt.desig, tt.DOB, tt.district_name, tt.school_name, tt.Complex_code "
			+ "FROM tteacher_master tt "
			+ "WHERE tt.district_name = :district AND tt.mandal_name = :mandal", nativeQuery = true)
	List<Object[]> findTeachersByDistrictAndMandal(@Param("district") String district, @Param("mandal") String mandal);

	@Query("SELECT ss FROM TeacherMaster ss WHERE ss.treasuryid = :treasuryid")
	List<TeacherMaster> findByTreasuryId(@Param("treasuryid") String treasuryid);

	@Query("SELECT t FROM TeacherMaster t WHERE t.treasuryid = :treasuryid AND t.mobilenumberteacher = :mobilenumberteacher")
	Optional<TeacherMaster> findByTreasuryIdAndMobileNumber(@Param("treasuryid") String treasuryid,
			@Param("mobilenumberteacher") String mobilenumberteacher);

	@Query("SELECT DISTINCT t.district_name FROM TeacherMaster t")
	List<String> findDistinctDistrictnamewrk();

	@Query("SELECT DISTINCT t.mandal_name FROM TeacherMaster t WHERE t.district_name = :district")
	List<Object[]> findDistinctMandalNamesByDistrict(String district);
	
	 
}