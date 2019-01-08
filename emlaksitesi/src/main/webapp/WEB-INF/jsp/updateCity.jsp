<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="adminHeader.jsp" flush="true"/>
<jsp:include page="adminSidebar.jsp" flush="true"/>


			<div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class=" form-grids form-grids-right">
								<div class="widget-shadow " data-example-id="basic-forms"> 
									<div class="form-title">
										<h4>Update City Form</h4>
																		
									<strong><h4 align="center" style="color: #47D1AF">${message}</h4></strong>
								
									</div>
									<div class="form-body">
										<form:form class="form-horizontal" modelAttribute="city"  method="post"> 
										
										<div class="form-group"> 
												<label for="" class="col-sm-2 control-label">City Name</label> 
												<div class="col-sm-9"> 
													<form:input type="text" value="" path="cityname" class="form-control" id="inputEmail3" placeholder="City Name"/> 
												</div> 
											</div> 			
										

											<div class="col-sm-offset-2"> 
												<form:button type="submit" name="submit" class="btn btn-default w3ls-button">Update City</form:button> 
											</div> 
										</form:form> 
									</div>
								</div>
							</div>
						</div>	
					</div>

<jsp:include page="adminFooter.jsp" flush="true"/>