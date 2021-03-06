<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
    	<div class="col-md-8 col-md-offset-2">
        	<a href="<c:url value="/status/new" />" class="btn btn-default pull-right">+ Create new</a>
			<table class="table">
				<thead>
		 		<tr>
		 			<th>#</th>
		 			<th>Name</th>
		 		</tr>
		 	</thead>
		 	<tbody>
		 		<c:forEach items="${statusList}" var="status">
		 		<tr>
		 			<td>${status.id}</td>
		 			<td>${status.name}</td>
		 		</tr>
		 		</c:forEach>
		 	</tbody>
			</table>
        </div> 
    </tiles:putAttribute>
</tiles:insertDefinition>