<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name=".template">
	<tiles:putAttribute name="body">

		<body>
			<div id="container">
				<div id="content">
					<c:url var="action" value='/projects/add' />
					<form:form method="post" action="${action}" htmlEscape="true"
						commandName="newProject">
						<h2>Project Registration</h2>
						<table>
							<tbody>
								<tr>
									<td><form:label path="pcode">Project Code:</form:label></td>
									<td><form:input path="pcode" /></td>
									<td><form:errors class="invalid" path="pcode" /></td>
								</tr>
							</tbody>
						</table>
						<table>
							<tr>
								<td><input type="submit" value="Create" class="register" /></td>
							</tr>
						</table>
					</form:form>
					<h2>items</h2>
					<c:choose>
						<c:when test="${projects.size()==0}">
							<em>No registered projects.</em>
						</c:when>
						<c:otherwise>
							<table class="simpletablestyle">
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
											<td><a
												href="<c:url value="/projects/view/${item.pid}"/>">/projects/view/${item.pid}</a></td>
									</c:forEach>
								</tbody>
							</table>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
	</tiles:putAttribute>
</tiles:insertDefinition>