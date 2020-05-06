package com.spoc.dao;

import java.util.List;

import com.spoc.model.TrainingDetails;



public interface TrainingDetailsDAO {
	public void deleteTrainingDetails(int trainingId);
	public void updateTrainingDetails(TrainingDetails tdetails);
	public  TrainingDetails getTrainingDetailsById(int trainingId);
	public List<TrainingDetails> getAllTrainingDetails();
	public void addTrainingDetails(TrainingDetails tdetails);
}
