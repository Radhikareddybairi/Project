package com.atossyntel.campushiretraining.DAO;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.atossyntel.campushiretraining.MODEL.TrainingDetail;

@Repository
public interface TrainingDetailDAO extends CrudRepository<TrainingDetail,Integer>{

}
