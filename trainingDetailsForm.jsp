<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<title>Request Information</title>

<style>
input[type=text], select {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 70%;
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  align:center;
}
input[type=submit]:hover {
  background-color: #006400;
  
}
</style>
</head>
<body>
<script>
$(document).ready(function() {
$(function() {
$("#sdate").datepicker({dateFormat:'dd-MM-yy'});
});
});
$(document).ready(function() {
	$(function() {
	$("#edate").datepicker({dateFormat:'dd-MM-yy'});
	});
	});</script>
<div align="center" >
		<h1 style="color:blue;">Request</h1>
		<form:form action="saveTdetails" method="post" modelAttribute="tdetails">
		
			<table border="0" bordercolor="dimgray">
				<form:hidden path="trainingId" />
				<form:hidden path="requestId"/>
				<form:hidden path="employeeId"/>
				<tr>
					<td>Training Domain</td>
					<td><form:select path="trainingRequest.requestName" >
					 <form:option value="--select--" label="--select--"/>
					 <form:option value="Advanced Artificial Intelligence" label="Advanced Artificial Intelligence"/>  
                      <form:option value="Intelligence Amplification" label="Intelligence Amplification"/>  
                       <form:option value="Brain Computer Interface" label="Brain Computer Interface"/>  
                       <form:option value="Human Computer Interface(UX/UI)" label="Human Computer Interface(UX/UI)"/> 
                        <form:option value="Virtual Reality" label="Virtual Reality"/>
                         <form:option value="IOT" label="IOT"/>
                          <form:option value="Bid Data" label="Big Data"/>
                           <form:option value="Automation" label="Automation"/>
                            <form:option value="Machine Learning" label="Machine Learning"/>
                            <form:option value="Java" label="Java"/>
                            <form:option value="Python" label="Python"/>
                            <form:option value="Data Science" label="Data Science"/>
                            <form:option value="Data Analytics" label="Data Analytics"/>
                            <form:option value="Angular" label="Angular"/>
                             
                       </form:select> 
                        </td>
				</tr>
				<tr>
					<td>Vertical</td>

					<td><form:select path="trainingRequest.verticalName" >
					 <form:option value="--select--" label="--select--"/>
					 <form:option value="BFNS" label="BFNS"/>
                           <form:option value="Manufacturing" label="Manufacturing"/>
                            <form:option value="Insurance" label="Insurance"/>
                            <form:option value="Health Care" label="Health Care"/>
                            <form:option value="Life Sciences" label="Life Sciences"/>
                            <form:option value="TMT" label="TMT"/>
                            <form:option value="Retail" label="Retail"/>
                            <form:option value="Logistics" label="Logistics"/>
                              <form:option value="Salesforce" label="Salesforce"/>
                             
                       </form:select> 
				</td>
				</tr>

				<tr>
					<td>No Of Participants</td>

					<td><form:input path="trainingRequest.noParticipants" />
					 
				</tr>
				<tr>
					<td>Mode Of Training</td>
					<td><form:select path="trainingRequest.modeOfTraining" >
					 <form:option value="--select--" label="--select--"/>
					 <form:option value="Webex" label="Webex"/>
                           <form:option value="ClassRoom" label="ClassRoom"/>
                           </form:select></td>
				</tr>
				<tr>
					<td>From</td>
					<td><form:input path="trainingRequest.sdate" id="sdate" /></td>
				</tr>
				<tr>
					<td>To</td>
					<td><form:input path="trainingRequest.edate" id="edate" /></td>
				</tr><tr>
					<td>Duration</td>
					<td><form:input path="trainingRequest.duration" /></td>
				</tr>
				<tr>
					<td>Trainer</td>
					<td><form:input path="employee.employeeName" /></td>
				</tr>
				<tr>
					<td>Room No</td>
					<td><form:input path="roomId" /></td>
				</tr>
				<tr>
					<td>Webex Id</td>
					<td><form:input path="webexId" /></td>
				</tr>
			<tr>
					<td>Training Approval</td>
					<td><form:select path="trainingApprovalStatus" >
	 <form:option value="--select--" label="--select--"/>
					 <form:option value="Rejected" label="Rejected"/>
                           <form:option value="Approved" label="Approved"/>
                           </form:select></td></td>
				</tr> 
    
   
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Save" ></td>
						
				</tr>
			
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="cancel" ></td>
						
				</tr>
					
				
				
			</table>
		</form:form>
	</div>
</body>
</html>