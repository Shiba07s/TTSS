package com.TTSS03.Service;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.SessionMaster;
import com.TTSS03.Repository.SessionMasterRepository;


@Service
public class SessionMasterServiceImpl implements SessionMasterService {
	
	@Autowired
	private SessionMasterRepository sessionMasterRepository;

//	@Override
//	public SessionMaster createSession(SessionMaster sessionMaster) {
//		return sessionMasterRepository.save(sessionMaster);
//		
//	}
	@Override
	public boolean existsSessionWithStatusCurrent() {
        long countCurrentSessions = sessionMasterRepository.countByStatusCurrent();
        return countCurrentSessions > 0;
    }

	@Override
    public SessionMaster createSession(SessionMaster sessionMaster) {
        try {
            // Additional logic for session creation if needed
            if (sessionMaster.getSessionName() == null || sessionMaster.getSessionName().isEmpty()) {
                throw new IllegalArgumentException("Session name cannot be empty");
            }

            // Check if there is an existing session with status "Current"
         // Check if there is an existing session with status "Current"
            if ("Current".equals(sessionMaster.getStatus()) && existsSessionWithStatusCurrent()) {
                throw new IllegalArgumentException("There can be only one session with status 'Current'");
            }

            // Save the new session to the repository
            SessionMaster createdSession = sessionMasterRepository.save(sessionMaster);

            // Additional post-save logic if needed

            return createdSession;
        } catch (IllegalArgumentException e) {
            // Log the exception details
            e.printStackTrace(); // or use a logging framework like SLF4J
            throw e; // rethrow the exception to maintain the original status code
        }
    }
	@Override
	public List<SessionMaster> getAllSession() {
		return sessionMasterRepository.findActiveSession();
	}
//	@Transactional
//    public SessionMaster updateSessionBySessionName(String sessionName, SessionMaster sessionMaster) {
//        // Retrieve the existing session by sessionName
//        SessionMaster existingSession = sessionMasterRepository.findBySessionName(sessionName);
//
//        if (existingSession != null) {
//            // Update the properties of the existing session with the new values
//            existingSession.setSessionCode(sessionMaster.getSessionCode());
//            existingSession.setFromDate(sessionMaster.getFromDate());
//            existingSession.setToDate(sessionMaster.getToDate());
//            existingSession.setStatus(sessionMaster.getStatus());
//
//            // Save the updated session
//            return sessionMasterRepository.save(existingSession);
//        }
//
//        // Handle the case where the session with the specified sessionName is not found
//        return null;
//    }
//	
//	@Override
//	@Transactional
//	public void updateTrainingSession(long id,String sessionCode, String sessionName, String fromDate,String toDate,String status) {
//		sessionMasterRepository.updateTrainingSession(status,sessionCode, sessionName,fromDate,toDate,id);
//		
//	}
 
	
	@Override
	@Transactional
	public void updateSession(long id, SessionMaster sessionMaster) {
		// TODO Auto-generated method stub
		sessionMasterRepository.updateSession(id, sessionMaster.getSessionCode(), sessionMaster.getSessionName(), sessionMaster.getFromDate(), sessionMaster.getToDate(), sessionMaster.getStatus());
		
	}
	@Override
	@Transactional
 
	public void deActivateTrainingSession(long id) {
		sessionMasterRepository.deactivateTrainingSession(id);
		
	}
	
	 public List<SessionMaster> getSessionsWithStatusCurrent() {
	        return sessionMasterRepository.findByStatusCurrent();
	    }

	 
}
