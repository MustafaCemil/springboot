<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

 <%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
  	<select>
 		<j:forEach var="city" items="${city}">
 	<option value="${city.id}">${city.id}</option>
 	</j:forEach>
 	</select>