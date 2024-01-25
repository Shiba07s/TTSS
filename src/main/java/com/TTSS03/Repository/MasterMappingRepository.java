package com.TTSS03.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.MasterMapping;

public interface MasterMappingRepository extends JpaRepository<MasterMapping, Long> {
	
	
	
	@Modifying
    @Query(value = "?1", nativeQuery = true)
    void saveOrUpdateEntityWithQuery(String query);
	
	@Query("SELECT ss FROM MasterMapping ss WHERE ss.trainingid = :trainingid and ss.venueid=:venueid")
	List<MasterMapping> findByTrainingId(@Param("trainingid") long trainingid,@Param("venueid")String venueid);
	

	 @Modifying
	    @Query("UPDATE MasterMapping e SET e.recordstatus = 'Inactive' WHERE e.slno = :mappingcode")
	    void deactivateTrainingMasterMapping(@Param("mappingcode") long mappingcode);
	 
	 
	 @Query("SELECT t FROM MasterMapping t WHERE t.recordstatus = 'Active'")
	    List<MasterMapping> findActiveMappingData();
}
