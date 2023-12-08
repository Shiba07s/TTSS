package com.TTSS03.Service;

import java.util.List;

import com.TTSS03.Entity.TreasuryGovt;

public interface TreasuryGovtService {
	
	List<TreasuryGovt>getByTreasuryId(String treasuryid);
	
	List<String> getDistrictName();
	 List<Object[]> getDistinctMandalNamesByDistrict(String districtnamewrk);

}
