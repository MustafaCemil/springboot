<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<jsp:include page="adminHeader.jsp" flush="true"/>
<jsp:include page="adminSidebar.jsp" flush="true"/>


<div class="panel panel-widget agile-validation">
								<div class="validation-grids validation-grids-right">
									<div class="widget-shadow login-form-shadow" data-example-id="basic-forms"> 
										<div class="input-info">
											<h3>Güvenli Çıkış Yapınız</h3>
										</div>
										<div class="form-body form-body-info">
											<form data-toggle="validator" novalidate="true" action="logout" method="post">
												<div class="form-group has-feedback">
													<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
												</div>
												<div class="bottom">

													<div class="form-group">
														<button type="submit" class="btn btn-primary">Logout</button>
													</div>
													<div class="clearfix"> </div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

<jsp:include page="adminFooter.jsp" flush="true"/>