package com.TTSS03.Service;

import java.util.List;

import com.TTSS03.Entity.ActualData;

public interface ActualDataService {
	
	
	ActualData saveOneData(ActualData actualData);
	
	List<ActualData>getAll();
	
	
	
	ActualData updateOne(int refplannerid,ActualData actualData);
	
	public void deactivateTraining(String refplannerid);
	
	

}
