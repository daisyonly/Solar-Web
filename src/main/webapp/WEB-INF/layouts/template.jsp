<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title><tiles:getAsString name="title" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/bootstrap-responsive.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>" />

<script src="<c:url value="/static/resources/js/jquery.js"/>"></script>
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<tiles:insertAttribute name="header" />
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<tiles:insertAttribute name="menu" />
			</div>

			<div class="container">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
		
		<hr>
		<tiles:insertAttribute name="footer" />
	</div>

</body>
</html>