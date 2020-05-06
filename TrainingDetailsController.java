package com.spoc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spoc.model.Employee;
import com.spoc.model.TrainingDetails;
import com.spoc.model.TrainingRequest;
import com.spoc.service.TrainingDetailsService;

@Controller
public class TrainingDetailsController {
	@Autowired
private TrainingDetailsService tdetailsService;

@RequestMapping(value = "/viewTdetails", method = RequestMethod.GET)
public ModelAndView viewDetais(@ModelAttribute("tdetails") TrainingDetails tdetails) throws IOException {
	 ModelAndView model=new ModelAndView();
	List<TrainingDetails> tdetail= tdetailsService.getAllTrainingDetails();
	 model.addObject("tdetail",tdetail);
	 model.setViewName("listofTrainingDetails");
	
	return model;
}
@RequestMapping(value = "/newTdetails", method = RequestMethod.GET)
public ModelAndView addDetails(ModelAndView model) {
	TrainingDetails tdetail = new TrainingDetails();
	TrainingRequest request = new TrainingRequest();
	Employee emp = new Employee();
	model.addObject("tdetail", tdetail);
	model.addObject("request", request);
	model.addObject("emp", emp);
	model.setViewName("trainingDetailsForm");
	return model;
}



 
 @RequestMapping(value = "/saveTdetails", method = RequestMethod.POST)
    public ModelAndView saveDetails(@ModelAttribute TrainingDetails tdetails) {
		if (tdetails.getTrainingId() == 0) { 
			tdetailsService.addTrainingDetails(tdetails);
		} else {
	tdetailsService.updateTrainingDetails(tdetails);
			
		}
		
		return new ModelAndView("redirect:/viewTdetails");
    }
 
    
    
    @RequestMapping(value = "/deleteTdetails", method = RequestMethod.GET)
    public ModelAndView deleteDetails(HttpServletRequest request) {
		int trainingId = Integer.parseInt(request.getParameter("trainingId"));
		tdetailsService.deleteTrainingDetails(trainingId);
		return new ModelAndView("redirect:/viewTdetails");
    }
    @RequestMapping(value = "/editTdetails", method = RequestMethod.GET)
	public ModelAndView editDetails(HttpServletRequest request) {
		int trainingId = Integer.parseInt(request.getParameter("trainingId"));
		TrainingDetails tdetail = tdetailsService.getTrainingDetailsById(trainingId);
		ModelAndView model = new ModelAndView("trainingDetailsForm");
	    model.addObject("tdetail", tdetail);
	    
	   
		return model;
	}
    }