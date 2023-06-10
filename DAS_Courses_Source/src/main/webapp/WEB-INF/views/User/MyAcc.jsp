<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="h-100" ng-app="MyApp" ng-controller="MyCtrl" ng-init="Validation()" data-bs-theme="{{Theme}}">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-route.js"></script>
<<<<<<< HEAD
    <title><spring:message code="user.myacc.webtitle"/></title>
=======
    <link rel="icon" type="image/x-icon" href="/Image/Logo.png">
    <title><spring:message code="user.myaccount.myaccount"/></title>
>>>>>>> 33784bbda2416d2280d3e17b941c569cffac0865
    <link href="/resources/style.css" rel="stylesheet">
    <script src="/resources/script.js"></script>
    <style>
        #BGImage {
            background: url("{{getImageOnTime()}}") no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
</head>

<body id="BGImage" class="d-flex flex-column h-100">
	<c:url var="url" value="/"/>
	
	<%@include file="Module/Header.jsp"%>




	<div class="row m-0 p-0">
		<div class="col-7 d-none d-lg-block"></div>
		<div class="col-12 col-lg-5 m-0 p-0"><%@include file="Module/MyAcc.jsp"%></div>
	</div>
	
	
	<!-- Toast -->
	<div class="toast-container position-fixed top-0 end-0 p-3"  >
		<div id="Toast" class="toast align-items-center" role="alert">
			<div class="d-flex">
				<div class="toast-body text-danger"><spring:message code="user.myaccount.toast_1"/> <br><spring:message code="user.myaccount.toast_2"/></div>
				<button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast"></button>
			</div>
		</div>
	</div>



    
    <%@include file="Module/Footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <c:if test="${Toast}">
	    <script>new bootstrap.Toast(document.getElementById('Toast')).show()</script>
	</c:if>
</body>
</html>