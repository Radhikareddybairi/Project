package com.atossyntel.campushiretraining.CONTROLLER;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.atossyntel.campushiretraining.SERVICE.TrainingDetailService;
import com.atossyntel.campushiretraining.SERVICE.TrainingRequestService;

@Controller
public class TrainingDetailController {

	@Autowired
	private TrainingDetailService trainingdetailservice;
	
	@GetMapping("/viewTrainings")
public String viewTrainings(HttpServletRequest req) {
	req.setAttribute("trainings", trainingdetailservice.findAllTrainings());
	req.setAttribute("mode", "TRAINING_VIEW");
	return "index";
}
}
