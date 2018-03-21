
<%
	request.setAttribute("contextName", request.getContextPath());
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.username" var="username" />
</sec:authorize>
<sec:authorize access="!isAuthenticated()">
	<sec:authentication property="principal" var="username" />
</sec:authorize>
<!DOCTYPE html>
<!-- main.jsp decorator //-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Icon -->
<link
	href='http://3.bp.blogspot.com/-2mRi5l6ECmY/VvtG90ryp3I/AAAAAAAAD1s/b7gZEquhhe4wXqFkxYls0zGkgSAnFB5ng/s1600/Tut%2BWuri%2BHandayani%2Bvector%2Blogo.png'
	rel='icon' type='image/icon' />
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>SMA Negeri 138<decorator:title /></title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet"
	href="${contextName}/assets/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${contextName}/assets/dist/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${contextName}/assets/dist/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${contextName}/assets/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
	folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${contextName}/assets/dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="${contextName}/assets/plugins/iCheck/flat/blue.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="${contextName}/assets/plugins/datepicker/datepicker3.css">
<!-- jQuery 2.2.3 -->
<script src="${contextName}/assets/dist/js/jquery-3.1.1.min.js"></script>
<!-- datepicker -->
<script
	src="${contextName}/assets/plugins/datepicker/bootstrap-datepicker.js"></script>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet"
	href="${contextName}/assets/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="${contextName}/assets/plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${contextName}/assets/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${contextName}/assets/dist/css/skins/_all-skins.min.css">
<decorator:head />
</head>
<body class="hold-transition skin-green sidebar-mini">
	<div class="wrapper">
		<!-- Sidebar -->
		<%@include file="sidebar.jsp"%>

		<!-- Header -->
		<%@include file="header.jsp"%>

		<!-- content -->
		<div class="content-wrapper">

			<!-- Main content -->
			<section class="content">
				<decorator:body />
			</section>
		</div>

	</div>

	<!-- jQuery 2.2.3 -->
	<script src="${contextName}/assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="${contextName}/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script
		src="${contextName}/assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${contextName}/assets/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="${contextName}/assets/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="${contextName}/assets/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="${contextName}/assets/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${contextName}/assets/dist/js/demo.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="${contextName}/assets/dist/js/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="${contextName}/assets/dist/js/bootstrap.min.js"></script>
	<!-- Javascript Custom -->
	<script src="${contextName}/assets/dist/js/javascript.js"></script>
	<!-- datepicker -->
	<script
		src="${contextName}/assets/plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- AdminLTE App -->
	<script src="${contextName}/assets/dist/js/app.min.js"></script>
	<script type="text/javascript">
		$.widget.bridge('uibutton', $.ui.button);
	</script>
</body>
</html>
