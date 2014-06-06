<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name=".listTemplate">
<tiles:putAttribute name="body">
	<div class="row">
		<div class="col-md-8">
			<c:url var="action" value='/projects/add' />
			<form:form method="post" action="${action}" htmlEscape="true" commandName="newProject">
				<h2><small>Project Registration</small></h2>
				<div class="form-group">
					<form:label path="pcode">Project Code:</form:label>
					<form:input path="pcode" cssClass="form-control" placeholder="Enter email"/>
					<form:errors class="invalid" path="pcode" />
				</div>
				<button type="submit" class="btn btn-default">Create</button>
			</form:form>
		</div>
	</div>
	<hr>
		
	<div class="row">
		<div class="col-md-8">
			<strong><i class="glyphicon glyphicon-comment"></i> Project Items</strong>
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>Project Code</th>
						<th>Status</th>
						<th>gridType</th>
						<th>REST URL</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${projects}" var="item">
						<tr>
							<td>${item.pcode}</td>
							<td>${item.status}</td>
							<td>${item.gridType}</td>
							<td>
								<a href="<c:url value="/projects/view/${item.pid}"/>">/projects/view/${item.pid}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</tiles:putAttribute>
</tiles:insertDefinition>