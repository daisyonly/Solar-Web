<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title><tiles:getAsString name="title" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>" />

<script type="text/javascript" src="<c:url value="/static/resources/js/jquery.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/resources/js/bootstrap.js"/>"></script>
</head>

<body>
	<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
		<tiles:insertAttribute name="header" />
	</div>

	
	<div class="container">
	<div class="row">
		<div class="col-md-3">
			<tiles:insertAttribute name="menu" />
	    </div>
		<div class="col-md-9">
			<tiles:insertAttribute name="body" />
		</div> 
	</div>
	</div>

	<tiles:insertAttribute name="footer" />

	<script type="text/javascript">
		$(document).ready(function() {
			$(".alert").addClass("in").fadeOut(4500);
			
			/* swap open/close side menu icons */
			$('[data-toggle=collapse]').click(function(){
				// toggle icon
				$(this).find("i").toggleClass("glyphicon-chevron-right glyphicon-chevron-down");
			});
		});
	</script>
        
</body>
</html>