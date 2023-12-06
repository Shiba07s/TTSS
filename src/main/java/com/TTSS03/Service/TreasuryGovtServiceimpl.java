package com.TTSS03.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.TreasuryGovt;
import com.TTSS03.Repository.TreasuryGovtEmpRepository;

@Service
public class TreasuryGovtServiceimpl implements TreasuryGovtService {
	
	@Autowired
	TreasuryGovtEmpRepository treasuryGovtEmpRepository;

	@Override
	public List<TreasuryGovt> getByTreasuryId(String treasuryid) {
		// TODO Auto-generated method stub
		return treasuryGovtEmpRepository.findByTreasuryId(treasuryid);
	}

}
