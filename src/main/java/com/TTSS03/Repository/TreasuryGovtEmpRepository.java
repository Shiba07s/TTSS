package com.TTSS03.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.TreasuryGovt;

public interface TreasuryGovtEmpRepository extends JpaRepository<TreasuryGovt, Long> {
	
	
	//List<TreasuryGovt>findByTreasuryId1(String treasuryid);
	 
	@Query("SELECT ss FROM TreasuryGovt ss WHERE ss.treasuryid = :treasuryid")
	List<TreasuryGovt> findByTreasuryId(@Param("treasuryid") String treasuryid);
	
	@Query("SELECT t FROM TreasuryGovt t WHERE t.treasuryid = :treasuryid AND t.mobilenumberteacher = :mobilenumberteacher")
    Optional<TreasuryGovt> findByTreasuryIdAndMobileNumber(@Param("treasuryid") String treasuryid, @Param("mobilenumberteacher") String mobilenumberteacher);
 


}
