<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<jsp:include page="adminHeader.jsp" flush="true"/>
<jsp:include page="adminSidebar.jsp" flush="true"/>


			 <div class="w3agile-validation w3ls-validation">
		<div class="panel panel-widget agile-validation">
			<div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
				<div class="input-info">
					<h3>User Update Form</h3>
					<strong><h4 align="center" style="color: #47D1AF">${err}</h4></strong>
				</div>
				<div class="form-body form-body-info">
					<form:form data-toggle="validator" modelAttribute="user" method="post">
						<div class="form-group valid-form has-error">
							<form:input type="text" path="firstname"  class="form-control" id="inputName" placeholder="FirstName"/>
						</div>
						
						<div class="form-group valid-form has-error">
							<form:input type="text" path="lastname"  class="form-control" id="inputName" placeholder="LastName"/>
						</div>
						
						<div class="form-group has-feedback has-error">
							<form:input type="email" class="form-control" id="inputEmail" path="email" placeholder="Email"/>
							<span class="glyphicon form-control-feedback glyphicon-remove" aria-hidden="true"></span>
						</div>
						
						<div class="form-group">
						  <form:input type="password" path="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password"/>
						</div>
						
						<div class="form-group">
						  <form:input type="tel" path="phone" data-toggle="validator" data-minlength="6" class="form-control" id="" placeholder="Phone"/>
						</div>
						
						<div class="form-group">
						  <form:input type="tel" path="hphone" data-toggle="validator" data-minlength="6" class="form-control" id="" placeholder="Hphone"/>
						</div>
					
						<div class="form-group valid-form has-error">
							<form:textarea type="text" path="adress"  class="form-control" id="inputName" placeholder="Adress"></form:textarea>
						</div>					
						
						<div class="form-group valid-form has-error">
						<form:select id="selector1" class="form-control1" path="city.id">
						   <j:forEach var="city" items="${city}">
								<form:option value="${city.id}">${city.cityname}</form:option>
							</j:forEach>
							</form:select>
						</div>		
						
						<div class="form-group valid-form has-error">
						<form:select id="selector1" class="form-control1" path="admin">
								<form:option value="true">Yetkili</form:option>
								<form:option value="false">Yetkisiz</form:option>
							</form:select>
						</div>	
										
						<div class="form-group valid-form has-error">
							<form:textarea type="textarea" path="about"  class="form-control" id="editor" placeholder="About"></form:textarea>
						</div>
						
			
						
						<div class="form-group">
							<form:button type="submit" class="btn btn-primary">Update</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
<jsp:include page="adminFooter.jsp" flush="true"/>