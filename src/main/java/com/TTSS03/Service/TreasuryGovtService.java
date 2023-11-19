package com.TTSS03.Service;

import java.util.List;
import java.util.Optional;

import com.TTSS03.Entity.TreasuryGovt;

public interface TreasuryGovtService {
	
	List<TreasuryGovt>getByTreasuryId(String treasuryid);
	
	Optional<TreasuryGovt> findByTreasuryIdAndMobileNumber(String treasuryid, String mobilenumberteacher);

	boolean isValidUser(String username, String password);

}
