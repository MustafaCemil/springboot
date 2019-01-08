<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="adminHeader.jsp" flush="true"/>
<jsp:include page="adminSidebar.jsp" flush="true"/>
 
 <div class="main-grid">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading">
					<h2>Users List</h2>
					<div style="margin-left: -120px">
					<ul class="bt-list">
						<li>	
							<a href="user/createUser" class="hvr-icon-float-away col-2">Create User</a>
						</li>
					</ul>
					</div>					
				</div>
				
				<div class="agile-tables">
				<div class="w3l-table-info">
      <table class="table" >
					
					<thead>
					  <tr bgcolor="#fcb216" >
						<th>FirstName</th>
						<th>LastName</th>
						<th>Email</th>
						<th>Password</th>
						<th>Phone</th>
						<th>Date</th>
						<th>City</th>
						<th>Admin</th>
						<th>Profile</th>
						<th>Update</th>
						<th>Delete</th>
						
					  </tr>
					</thead>
		   	<j:forEach  items="${user}" var="user">
					<tbody>
					  <tr bgcolor="#f3faff">
						<td align="center" data-th="firstname">${user.firstname}</td>
						<td align="center" data-th="Id">${user.lastname}</td>
						<td align="center" data-th="Id">${user.email}</td>
						<td align="center" data-th="Id">${user.password}</td>
						<td align="center" data-th="Id">${user.phone}</td>
						<td align="center" data-th="Id">${user.date}</td>
						<td align="center" data-th="Id">${user.city.cityname}</td>
						<td align="center" data-th="Id">${user.admin}</td>
						<td data-th="updateuser">
							<ul class="bt-list" >
								<li ><a href="profileUser/${user.id}" class="hvr-icon-pop col-15" ></a></li>
							</ul>
						</td>
						
						<td  data-th="updateuser">
							<ul class="bt-list" >
								<li ><a href="updateUser/${user.id}" class="hvr-icon-spin col-7" ></a></li>
							</ul>
						</td>
						<td data-th="Delete">
							<ul class="bt-list" >
								<li ><a href="deleteUser/${user.id}" class="hvr-icon-shrink col-5"></a></li>
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