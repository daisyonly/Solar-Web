<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul class="list-unstyled">
	<li class="active">
		<a href="#"><i class="glyphicon"></i>Home</a>
	</li>
	<li class="nav-header">
		<a href="#" data-toggle="collapse" data-target="#userMenu">
			<h5>
				Project <i class="glyphicon glyphicon-chevron-down"></i>
			</h5>
		</a>
		<ul class="list-unstyled collapse in" id="userMenu">
			<li><a href="#"><i class="glyphicon glyphicon-user"></i> Client Detail</a></li>
			<li><a href="#"><i class="glyphicon glyphicon-cog"></i> Project Detail</a></li>
			<li><a href="#"><i class="glyphicon glyphicon-cog"></i> Electrical Requirement</a></li>
			<li><a href="#"><i class="glyphicon glyphicon-comment"></i> Proposal</a></li>
			<li><a href="#"><i class="glyphicon glyphicon-flag"></i> Status</a></li>
		</ul>
	</li>

	<li class="active">
		<a href="#"><i class="glyphicon"></i>Sync to Server</a>
	</li>
	<li class="active">
		<a href="#"><i class="glyphicon"></i>Sync from Server</a>
	</li>
	<hr>
	<li class="nav-header">
		<a href="#" data-toggle="collapse" data-target="#menu2">
			<h5>
				Examples <i class="glyphicon glyphicon-chevron-right"></i>
			</h5>
		</a>

		<ul class="list-unstyled collapse" id="menu2">
			<li><a href="<c:url value="/projects"/>"><span class="badge badge-info">1</span> Project</a></li>
			<li><a href="<c:url value="/"/>"><span class="badge badge-info">2</span> Member</a></li>
		</ul>
	</li>
</ul>