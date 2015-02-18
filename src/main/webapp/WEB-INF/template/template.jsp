<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>TaskManager</title>
		<script src="<c:url value="/resources/jquery-2.1.3.min.js" />"></script>
		<link rel="stylesheet" href="<c:url value="/resources/bootstrap.min.css" />">
		<script src="<c:url value="/resources/bootstrap.min.js" />"></script>
    </head>
<body>
	<div class="container">

		<!-- Static navbar -->
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="<c:url value="/"/>">TaskManager</a>
		    </div>
		    <div id="navbar" class="navbar-collapse collapse">
		      <ul class="nav navbar-nav">
		        <li><a href="<c:url value="/status/"/>">Status</a></li>
		        <li><a href="#">Contact</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">Action</a></li>
		            <li><a href="#">Another action</a></li>
		            <li><a href="#">Something else here</a></li>
		            <li class="divider"></li>
		            <li class="dropdown-header">Nav header</li>
		            <li><a href="#">Separated link</a></li>
		            <li><a href="#">One more separated link</a></li>
		          </ul>
		        </li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
		        <li><a href="../navbar-static-top/">Static top</a></li>
		        <li><a href="../navbar-fixed-top/">Fixed top</a></li>
		      </ul>
		    </div><!--/.nav-collapse -->
		  </div><!--/.container-fluid -->
		</nav>
		
		
		<div class="row">
			<tiles:insertAttribute name="body" />
		</div>
		
	</div> <!-- /container -->
</body>
</html>