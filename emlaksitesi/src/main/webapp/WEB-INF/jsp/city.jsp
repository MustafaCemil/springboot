<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="adminHeader.jsp" flush="true"/>
<jsp:include page="adminSidebar.jsp" flush="true"/>
 
 
 <div class="main-grid">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading">
					<h2>List City</h2>
					<div style="margin-left: -120px">
					<ul class="bt-list">
						<li>	
							<a href="city/createCity" class="hvr-icon-float-away col-2">Create City</a>
						</li>
					</ul>
					</div>
				</div>
				
				<div class="agile-tables">
				<div class="w3l-table-info">
      <table class="table" >
					
					<thead>
					  <tr bgcolor="#fcb216" >
						<th>City Name</th>
						<th>Update</th>
						<th>Delete</th>
					  </tr>
					</thead>
					
					
			<j:forEach var="city" items="${city}">
					<tbody>
					  <tr bgcolor="#f3faff">
						<td align="center" data-th="cityname">${city.cityname}</td>
						<td align="center"  data-th="updateuser">
							<ul class="bt-list" >
								<li ><a href="updateCity/${city.id}" class="hvr-icon-spin col-7" ></a></li>
							</ul>
						</td>
						<td align="center"  data-th="Delete">
							<ul class="bt-list" >
								<li ><a href="deleteCity/${city.id}" class="hvr-icon-shrink col-5"></a></li>
							</ul>
						</td>
					  </tr>
					</tbody>
			</j:forEach>
					
					
				  </table>				  
					</div>
				</div>
				
				<!-- //tables -->
			</div>
		</div>
 
 
<jsp:include page="adminFooter.jsp" flush="true"/>