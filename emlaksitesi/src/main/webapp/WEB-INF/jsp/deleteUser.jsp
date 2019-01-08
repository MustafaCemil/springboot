<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="adminHeader.jsp" flush="true"/>
<jsp:include page="adminSidebar.jsp" flush="true"/>

   <div class="w3agile-validation w3ls-validation">
		<div class="panel panel-widget agile-validation">
			<div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
				<div class="input-info">
					<h3>User Delete Form</h3>
					<strong><h4 align="center" style="color: #47D1AF">${err}</h4></strong>
				</div>
				<div class="form-body form-body-info">
					<form:form data-toggle="validator" modelAttribute="user" method="post">

						<div class="form-group">
							<form:button type="submit" class="btn btn-primary">Delete</form:button>
						</div>
					</form:form>
					
			
				</div>
			</div>
		</div>
					
							

<jsp:include page="adminFooter.jsp" flush="true"/>