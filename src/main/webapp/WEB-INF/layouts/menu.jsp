<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="well">
	<ul class="nav nav-pills nav-stacked">
		<li>
			<label class="label label-important">Home</label>
		</li>
		<li>
			<label class="label label-warning">Project</label>
			<ul class="list-group">
				<li class="list-group-item list-group-item-success"><a href="#">Client Detail</a></li>
				<li class="list-group-item list-group-item-success"><a href="#">Project Detail</a></li>
				<li class="list-group-item list-group-item-success"><a href="#">Electrical Requirement</a></li>
				<li class="list-group-item list-group-item-success"><a href="#">Proposal</a></li>
				<li class="list-group-item list-group-item-success"><a href="#">Status</a></li>
			</ul>
		</li>
		<li>
			<label class="label label-info">
				Sync to Server
			</label>
		</li>
		<li>
			<label class="label label-success">
				Sync from Server
			</label>
		</li>
	</ul>
</div>
<div class="list-group">
	<a href="<c:url value="/projects"/>" class="list-group-item list-group-item-info">Project Monitor example</a>
</div>