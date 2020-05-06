package com.spoc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.model.TrainingDetails;

@Repository
@Transactional
public class TrainingDetailsDAOImpl implements TrainingDetailsDAO{
	public TrainingDetailsDAOImpl() {
		super();
	}
	@Autowired
	@PersistenceContext
	private EntityManager entityManager;

	public TrainingDetailsDAOImpl(EntityManager theEntityManager) {
		entityManager = theEntityManager;
	}

	@Override
	public void deleteTrainingDetails(int trainingId) {
		// TODO Auto-generated method stub
		Session currentSession = entityManager.unwrap(Session.class);
		Query theQuery = currentSession.createQuery("delete from TrainingDetails where id=:trainingId");
		theQuery.setParameter("trainingId", trainingId);
		theQuery.executeUpdate();
	}

	@Override
	public void updateTrainingDetails(TrainingDetails tdetails) {
		// TODO Auto-generated method stub
		Session currentSession = entityManager.unwrap(Session.class);
		
		 currentSession.saveOrUpdate(tdetails);
		
	}

	@Override
	public TrainingDetails getTrainingDetailsById(int trainingId) {
		// TODO Auto-generated method stub
		Session currentSession = entityManager.unwrap(Session.class);
		return currentSession.get(TrainingDetails.class, trainingId);
	}

	@Override
	public List<TrainingDetails> getAllTrainingDetails() {
		// TODO Auto-generated method stub
		Session currentSession = entityManager.unwrap(Session.class);
		Query<TrainingDetails> theQuery = currentSession.createQuery("from TrainingDetails", TrainingDetails.class);
		List<TrainingDetails> request = theQuery.getResultList();		
		return request;
	}

	@Override
	public void addTrainingDetails(TrainingDetails tdetails) {
		// TODO Auto-generated method stub
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(tdetails);
	}
}
