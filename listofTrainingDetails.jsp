<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Training Information</title>
</head>

<body>

 <div align="center">

        <table border="1" bordercolor="dimgray">
            
             <th>Training Domain</th>
             <th>Vertical</th>
             <th>No Of Participants</th>
             <th>Mode Of Training</th>
               <th>Trainer</th>
                 <th>Room No</th>
                   <th>Webex Id</th>
             <th> From</th>
             <th> To</th>
              <th> Duration</th>
              
               <th> Status</th>
             <th>Update</th>
              <th>Delete</th>
           
 
  <c:forEach var="tdetails"  items="${tdetail}">
   <tr>  
   <td>${tdetails.trainingRequest.requestName}</td>
       <td>${tdetails.trainingRequest.verticalName}</td>
       <td>${tdetails.trainingRequest.noParticipants}
          <td>${tdetails.trainingRequest.sdate}</td>
         <td>${tdetails.trainingRequest.edate}</td>
          <td>${tdetails.trainingRequest.duration}</td>
           <td>${tdetails.trainingRequest.modeOfTraining}</td>
           <td>${tdetails.trainingApprovalStatus}</td>
           <td>${tdetails.employee.employeeName}</td>
           <td>${tdetails.roomId}</td>
            <td>${tdetails.webexId}</td>
         <td><a href="editTdetails?trainingId=${tdetails.trainingId}"  style="color: #006400">Update Details</a></td>
         <td><a href="deleteTdetails?trainingId=${tdetails.trainingId}" style="color: #cc0000">Delete</a></td>
            </tr>
         </c:forEach>
       
         
       
         
</table>
</div>
<center>
<a href="newTdetails">add new details</a>
</center>
</body>
</html>