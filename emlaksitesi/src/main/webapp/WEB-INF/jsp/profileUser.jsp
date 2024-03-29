<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="adminHeader.jsp" flush="true"/>
<jsp:include page="adminSidebar.jsp" flush="true"/>


 <div class="main-grid">
			<div class="agile-grids">	

<div id="user-profile-2" class="user-profile"  >
		<div class="tabbable" >
			<ul class="nav nav-tabs padding-18">
				<li class="active" >
					<a data-toggle="tab" href="#home" aria-expanded="true">
						<i class="green ace-icon fa fa-user bigger-120"></i>
						Profile
					</a>
				</li>

				<li class="">
					<a data-toggle="tab" href="#pictures" aria-expanded="false">
						<i class="pink ace-icon fa fa-picture-o bigger-120"></i>
						Pictures
					</a>
				</li>
			</ul>

			<div class="tab-content no-border padding-24">
				<div id="home" class="tab-pane active">
					<div class="row">
						<div class="col-xs-12 col-sm-3 center">
							<span class="profile-picture">
								<img class="editable img-responsive" alt=" Avatar" id="avatar2" src="http://bootdey.com/img/Content/avatar/avatar6.png">
							</span>

							<div class="space space-4"></div>

							<a href="http://localhost:8080/admin/updateUser/${user.id}" class="btn btn-sm btn-block btn-success">
								<i class="ace-icon fa fa-plus-circle bigger-120"></i>
								<span class="bigger-110">Update</span>
							</a>

							<a href="#" class="btn btn-sm btn-block btn-primary">
								<i class="ace-icon fa fa-envelope-o bigger-110"></i>
								<span class="bigger-110">Send a message</span>
							</a>
						</div><!-- /.col -->

						<div class="col-xs-12 col-sm-9">
							<h4 class="blue">
								<span class="middle">${user.firstname} ${user.lastname}</span>

							</h4>

							<div class="profile-user-info">
								<div class="profile-info-row">
									<div class="profile-info-name"> ${user.email}</div>

									<div class="profile-info-value">
										<span>${user.password}</span>
									</div>
								</div>

								<div class="profile-info-row">
									<div class="profile-info-name"> Location </div>

									<div class="profile-info-value">
										<i class="fa fa-map-marker light-orange bigger-110"></i>
										<span>${user.city.cityname}</span>
									</div>
								</div>

								<div class="profile-info-row">
									<div class="profile-info-name"> ${user.phone}</div>

									<div class="profile-info-value">
										<span>38</span>
									</div>
								</div>

								<div class="profile-info-row">
									<div class="profile-info-name"> Joined </div>

									<div class="profile-info-value">
										<span>2010/06/20</span>
									</div>
								</div>

								<div class="profile-info-row">
									<div class="profile-info-name"> Last Online </div>

									<div class="profile-info-value">
										<span>3 hours ago</span>
									</div>
								</div>
							</div>

							<div class="hr hr-8 dotted"></div>

							<div class="profile-user-info">
								<div class="profile-info-row">
									<div class="profile-info-name"> Website </div>

									<div class="profile-info-value">
										<a href="#" target="_blank">www.alexdoe.com</a>
									</div>
								</div>

								<div class="profile-info-row">
									<div class="profile-info-name">
										<i class="middle ace-icon fa fa-facebook-square bigger-150 blue"></i>
									</div>

									<div class="profile-info-value">
										<a href="#">Find me on Facebook</a>
									</div>
								</div>

								<div class="profile-info-row">
									<div class="profile-info-name">
										<i class="middle ace-icon fa fa-twitter-square bigger-150 light-blue"></i>
									</div>

									<div class="profile-info-value">
										<a href="#">Follow me on Twitter</a>
									</div>
								</div>
							</div>
						</div><!-- /.col -->
					</div><!-- /.row -->

					<div class="space-20"></div>

					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<div class="widget-box transparent">
								<div class="widget-header widget-header-small">
									<h4 class="widget-title smaller">
										<i class="ace-icon fa fa-check-square-o bigger-110"></i>
										About
									</h4>
								</div>

								<div class="widget-body">
									<div class="widget-main">
										<p>
											${user.about}
										</p>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- /#home -->

				

				<div id="pictures" class="tab-pane">
					<ul class="ace-thumbnails">
						<li>
							<a href="#" data-rel="colorbox">
								<img alt="150x150" src="http://lorempixel.com/200/200/nature/1/">
								<div class="text">
									<div class="inner">Sample Caption on Hover</div>
								</div>
							</a>

							<div class="tools tools-bottom">
								<a href="#">
									<i class="ace-icon fa fa-link"></i>
								</a>

								<a href="#">
									<i class="ace-icon fa fa-paperclip"></i>
								</a>

								<a href="#">
									<i class="ace-icon fa fa-pencil"></i>
								</a>

								<a href="#">
									<i class="ace-icon fa fa-times red"></i>
								</a>
							</div>
						</li>

					</ul>
				</div><!-- /#pictures -->
			</div>
		</div>
	</div>
	
</div>
</div>
<jsp:include page="adminFooter.jsp" flush="true"/>