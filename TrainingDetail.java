package com.atossyntel.campushiretraining.MODEL;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="training_detail")
public class TrainingDetail implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="training_id")
	private int training_id;
	private String training_name;
	private String training_description;
	private String training_location;
	
	@Temporal(TemporalType.DATE)
	private Date training_sdate;
	
	@Temporal(TemporalType.DATE)
	private Date training_edate;
	private String training_duration;
	private String training_status;
	
	public TrainingDetail() {
		super();
	}

	

	



	public TrainingDetail(int training_id, String training_name, String training_description, String training_location,
			Date training_sdate, Date training_edate, String training_duration, String training_status
			) {
		super();
		this.training_id = training_id;
		this.training_name = training_name;
		this.training_description = training_description;
		this.training_location = training_location;
		this.training_sdate = training_sdate;
		this.training_edate = training_edate;
		this.training_duration = training_duration;
		this.training_status = training_status;
		
	}







	public int getTraining_id() {
		return training_id;
	}







	public void setTraining_id(int training_id) {
		this.training_id = training_id;
	}







	public String getTraining_name() {
		return training_name;
	}







	public void setTraining_name(String training_name) {
		this.training_name = training_name;
	}







	public String getTraining_description() {
		return training_description;
	}







	public void setTraining_description(String training_description) {
		this.training_description = training_description;
	}







	public String getTraining_location() {
		return training_location;
	}







	public void setTraining_location(String training_location) {
		this.training_location = training_location;
	}







	public Date getTraining_sdate() {
		return training_sdate;
	}







	public void setTraining_sdate(Date training_sdate) {
		this.training_sdate = training_sdate;
	}







	public Date getTraining_edate() {
		return training_edate;
	}







	public void setTraining_edate(Date training_edate) {
		this.training_edate = training_edate;
	}







	public String getTraining_duration() {
		return training_duration;
	}







	public void setTraining_duration(String training_duration) {
		this.training_duration = training_duration;
	}







	public String getTraining_status() {
		return training_status;
	}







	public void setTraining_status(String training_status) {
		this.training_status = training_status;
	}









	@Override
	public String toString() {
		return "TrainingDetail [training_id=" + training_id + ", training_name=" + training_name
				+ ", training_description=" + training_description + ", training_location=" + training_location
				+ ", training_sdate=" + training_sdate + ", training_edate=" + training_edate + ", training_duration="
				+ training_duration + ", training_status=" + training_status + "]";
	}







	

	
	
}
