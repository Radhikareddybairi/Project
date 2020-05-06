package com.spoc.service;

import java.util.List;

import com.spoc.model.TrainingDetails;

public interface TrainingDetailsService {
	public void deleteTrainingDetails(int trainingId);
	public void updateTrainingDetails(TrainingDetails tdetails);
	public  TrainingDetails getTrainingDetailsById(int trainingId);
	public List<TrainingDetails> getAllTrainingDetails();
	public void addTrainingDetails(TrainingDetails tdetails);
}
