<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
    	<div class="col-md-12">
        	<h3 class="text-center">Welcome to TaskManager</h3>
        </div> 
    </tiles:putAttribute>
</tiles:insertDefinition>