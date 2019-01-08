<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<div class="main-grid">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading">
					<h2>Users List</h2>
					<ul class="bt-list">
						<li>	
							<a href="" class="hvr-icon-float-away col-2"></a>
						</li>
					</ul>
				</div>
				
				<div class="agile-tables">
				<div class="w3l-table-info">
      <table class="table" >
					
					<thead>
					  <tr bgcolor="#fcb216" >
						<th>Id</th>
					  </tr>
					</thead>
			<foreach>
					<tbody>
					  <tr bgcolor="#f3faff">
						<td align="center" data-th="Id"></td>
						<td align="center"  data-th="updateuser">
							<ul class="bt-list" >
								<li ><a href="" class="hvr-icon-spin col-7" ></a></li>
							</ul>
						</td>
						<td align="center"  data-th="Delete">
							<ul class="bt-list" >
								<li ><a href="" class="hvr-icon-shrink col-5"></a></li>
							</ul>
						</td>
					  </tr>
					</tbody>
					<foreach>
				  </table>				  
					</div>
				</div>
				
				<!-- //tables -->
			</div>
		</div>