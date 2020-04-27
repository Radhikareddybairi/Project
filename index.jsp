<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <title>Campus Hire Training</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Campus Hire Training</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Employees</a></li>
      
          <li><a href="/newEmployee">New Employee</a></li>
           <li><a href="/viewRequest">Requests</a></li>
            <li><a href="/viewTrainings">Trainings</a></li>
          
        </ul>
      </li>
      </div>
</nav>
<div class="container">
             <c:choose>
             <c:when test="${mode=='EMPLOYEE_VIEW'}">
             <table class="table table-striped">
    <thead>
      <tr>
      <th>Employee Id</th> 
        <th>Employee Name</th>
        <th>Employee Mail</th>
         <th>Employee Designation</th>
        <th>Employee Location</th>
        <th>Edit </th>
        <th>Delete </th>
      </tr>
    </thead>
    <tbody>
       <c:forEach var="employee" items="${employees}">
                <tr>
                       
                    <td>${employee.employee_id}</td>
                    <td>${employee.employee_name}</td>
                    <td>${employee.employee_mail}</td>
                    <td>${employee.employee_designation}</td>
                    <td>${employee.employee_location}</td>
                    <td><a href="updateEmployee?employee_id=${employee.employee_id}"><div class="glyphicon glyphicon-pencil">
                    <td><a href="deleteEmployee?employee_id=${employee.employee_id}"><div class="glyphicon glyphicon-trash">
                    
                    </div></a></td>
                </tr>
            </c:forEach>
    </tbody>
  </table>
             </c:when>
             
             <c:when test="${mode=='EMPLOYEE_EDIT'||mode=='EMPLOYEE_NEW'}">
             <form action="save" method="post">
            <%--  <input type="hidden" class="form-control" value="${employee.employee_id}" id="employee_id"  name="employee_id"> --%>
            <%--  <div class="form-group">
      <label for="EmployeeId">Employee Id</label>
      <input type="text" class="form-control" value="${employee.id}" id="id"  name="id">
    </div> --%>
    <div class="form-group">
      <label for="EmployeeCode">Employee ID</label>
      <input type="text" class="form-control" value="${employee.employee_id}" id="employee_id"  name="employee_id">
    </div>
    <div class="form-group">
      <label for="EmployeeName">Employee Name</label>
      <input type="text" class="form-control" value="${employee.employee_name}" id="employee_name"  name="employee_name">
    </div>
     <div class="form-group">
      <label for="EmployeeMail">Employee Mail</label>
      <input type="email" class="form-control" value="${employee.employee_mail}" id="employee_mail"  name="employee_mail">
    </div>
     <div class="form-group">
      <label for="EmployeeDesignation">Employee Designation</label>
      <input type="text" class="form-control" value="${employee.employee_designation}" id="employee_designation"  name="employee_designation">
    </div>
     <div class="form-group">
      <label for="EmployeeLocation">Employee Location</label>
      <input type="text" class="form-control" value="${employee.employee_location}" id="employee_location"  name="employee_location">
    </div>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
             </c:when>
              <c:when test="${mode=='REQUEST_VIEW'}">
             <table class="table table-striped">
    <thead>
      <tr>
      <th>Request ID</th>
       <th>Request Name</th>
       
        <th>Request Description</th>
        <th>Request Date</th>
         <th>Request Status</th>
       
        <th>Edit </th>
        <th>Delete </th>
      </tr>
    </thead>
    <tbody>
       <c:forEach var="request" items="${requests}">
                <tr>
                        
                    <td>${request.request_id}</td>
                    <td>${request.request_name}</td>
                     <td>${request.request_description}</td>
                    <td>${request.request_date}</td>
                    <td>${request.request_status}</td>
                   
                    <td><a href="updateReuest?request_id=${request.request_id}"><div class="glyphicon glyphicon-pencil">
                    <td><a href="deleteRequest?request_id=${request.request_id}"><div class="glyphicon glyphicon-trash">
                    
                    </div></a></td>
                </tr>
            </c:forEach>
    </tbody>
  </table>
             </c:when>
              <c:when test="${mode=='TRAINING_VIEW'}">
             <table class="table table-striped">
    <thead>
      <tr>
      <th>Training Id</th>
       <th>Training Name</th>
       
        <th>Training Description</th>
        <th>Training Location</th>
         <th>Training Start Date</th>
        <th>Training End Date</th>
        <th>Training Duration</th>
        <th>Training Status</th>
        <th>Edit </th>
        <th>Delete </th>
      </tr>
    </thead>
    <tbody>
       <c:forEach var="training" items="${trainings}">
                <tr>
                        <td>${training.training_id}</td>
                    <td>${training.training_description}</td>
                    <td>${training.training_name}</td>
                    <td>${training.training_location}</td>
                    <td>${training.training_sdate}</td>
                    <td>${training.training_edate}</td>
                     <td>${training.training_duration}</td>
                      <td>${training.training_status}</td>
                       <td>${training.training_edate}</td>
                    <td><a href="updateTraining?training_id=${training.training_id}"><div class="glyphicon glyphicon-pencil">
                    <td><a href="deleteTraining?training_id=${training.training_id}"><div class="glyphicon glyphicon-trash">
                    
                    </div></a></td>
                </tr>
            </c:forEach>
    </tbody>
  </table>
             </c:when>
             </c:choose>
  
</div>

</body>
</html>