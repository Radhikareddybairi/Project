package com.atossyntel.campushiretraining.MODEL;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

  @Entity
     public class TrainingDetails { 
	 private int trainingId; 
	 private String trainingStatus;
	 private String trainingApprovalStatus;
	 private String trainerName;
	 private String sdate;
	 private String edate;
	 private String VerticalName;
	 private String modeOfTraining;
	 private String noParticipants;
	 private String roomId;
	 private String webexId;
	 
	 public TrainingDetails() {
		 super();
	 }
	 @Id
	 @GeneratedValue(strategy=GenerationType.TABLE,generator="tdetailstbl")
	public int getTrainingId() {
		return trainingId;
	}
	public void setTrainingId(int trainingId) {
		this.trainingId = trainingId;
	}
	public String getTrainingStatus() {
		return trainingStatus;
	}
	public void setTrainingStatus(String trainingStatus) {
		this.trainingStatus = trainingStatus;
	}
	public String getTrainingApprovalStatus() {
		return trainingApprovalStatus;
	}
	public void setTrainingApprovalStatus(String trainingApprovalStatus) {
		this.trainingApprovalStatus = trainingApprovalStatus;
	}
	public String getTrainerName() {
		return trainerName;
	}
	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getVerticalName() {
		return VerticalName;
	}
	public void setVerticalName(String verticalName) {
		VerticalName = verticalName;
	}
	public String getModeOfTraining() {
		return modeOfTraining;
	}
	public void setModeOfTraining(String modeOfTraining) {
		this.modeOfTraining = modeOfTraining;
	}
	public String getNoParticipants() {
		return noParticipants;
	}
	public void setNoParticipants(String noParticipants) {
		this.noParticipants = noParticipants;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getWebexId() {
		return webexId;
	}
	public void setWebexId(String webexId) {
		this.webexId = webexId;
	}
  }
	