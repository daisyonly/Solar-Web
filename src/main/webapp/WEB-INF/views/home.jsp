<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name=".template">
	<tiles:putAttribute name="body">
		<h1> <small>The time on the server is</small> <span class="badge">${serverTime}</span></h1>

		<form:form commandName="newMember" id="reg" cssClass="form-signin">
			<h2 class="form-signin-heading">Member Registration</h2>
			<table>
				<tbody>
					<tr>
						<td><form:label path="name">Name:</form:label></td>
						<td><form:input path="name" cssCclass="input-block-level" placeholder="User Name"/></td>
						<td><form:errors class="invalid" path="name" /></td>
					</tr>
					<tr>
						<td><form:label path="email">Email:</form:label></td>
						<td><form:input path="email" cssCclass="input-block-level" placeholder="example@websiste.com"/></td>
						<td><form:errors class="invalid" path="email" /></td>
					</tr>
					<tr>
						<td><form:label path="phoneNumber">Phone #:</form:label>
						<td><form:input path="phoneNumber" cssCclass="input-block-level" placeholder="2128555511"/></td>
						<td><form:errors class="invalid" path="phoneNumber" /></td>
					</tr>
				</tbody>
			</table>
			<table>
				<tr>
					<td>
						<input type="submit" value="Register" class="btn btn-large btn-primary" />
					</td>
				</tr>
			</table>
		</form:form>
		
		<h2>Members</h2>
		<c:choose>
			<c:when test="${members.size()==0}">
				<em>No registered members.</em>
			</c:when>
			<c:otherwise>
				<table class="simpletablestyle">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Email</th>
							<th>Phone #</th>
							<th>REST URL</th>
							<th>Delete?</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${members}" var="member">
							<tr>
								<td>${member.id}</td>
								<td>${member.name}</td>
								<td>${member.email}</td>
								<td>${member.phoneNumber}</td>
								<td><a href="<c:url value="/members/view/${member.id}"/>">/members/view/${member.id}</a></td>
								<td><a
									href="<c:url value="/members/delete/${member.id}"/>">delete</a></td>
						</c:forEach>
					</tbody>
				</table>
				<table class="simpletablestyle">
					<tr>
						<td>REST URL for all members: <a
							href="<c:url value="/members/list"/>">/members/list</a>
						</td>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>		
	</tiles:putAttribute>
</tiles:insertDefinition>
