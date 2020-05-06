package com.spoc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spoc.dao.TrainingDetailsDAO;
import com.spoc.model.TrainingDetails;

@Service
@Transactional
public class TrainingDetailsServiceImpl implements TrainingDetailsService{
	public TrainingDetailsServiceImpl() {
		super();
	}
	@Autowired
	private TrainingDetailsDAO tdetailsDao;

	@Override
	public void deleteTrainingDetails(int trainingId) {
		// TODO Auto-generated method stub
		tdetailsDao.deleteTrainingDetails(trainingId);
	}

	@Override
	public void updateTrainingDetails(TrainingDetails tdetails) {
		// TODO Auto-generated method stub
		tdetailsDao.updateTrainingDetails(tdetails);
	}

	@Override
	public TrainingDetails getTrainingDetailsById(int trainingId) {
		// TODO Auto-generated method stub
		return tdetailsDao.getTrainingDetailsById(trainingId);
	}

	@Override
	public List<TrainingDetails> getAllTrainingDetails() {
		// TODO Auto-generated method stub
		return tdetailsDao.getAllTrainingDetails();
	}

	@Override
	public void addTrainingDetails(TrainingDetails tdetails) {
		// TODO Auto-generated method stub
		tdetailsDao.addTrainingDetails(tdetails);;
	}

}
