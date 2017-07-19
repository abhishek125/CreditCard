<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="myModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=stylesheet type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/angular.js"></script>
<script>
var myApp=angular.module("myModule",[])
				.controller("myController",function($scope,$http){
					
					$http.get("/CreditCard/users")
					.then(function(response){
						$scope.users=response.data;
						console.log($scope.users);
					}).catch(function(response) {
						  console.error('Error occurred:', response.status, response.data);
					}).finally(function() {
						 console.log("Task Finished.");
					});
				});
</script>
<title>users with credit cards</title>
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>id</th>
				<th>Name</th>
				<th>balance limit</th>
				<th>sex</th>
				<th>education</th>
				<th>marraige</th>
				<th>age</th>
			</tr>
		</thead>
		<tbody  ng-controller="myController">
		<tr ng-repeat="user in users">
		<td>
						<a href="${pageContext.request.contextPath}/user/{{user.id}}">{{user.id}}</a>
					</td>
					<td>{{user.name}}</td>
					<td>{{user.limitbal}}</td>
					<td>{{user.sex}}</td>
					<td>{{user.education}}</td>
					<td>{{user.maritalStatus}}</td>
					<td>{{user.age}}</td>
					<td>
		</tr>
			
			
		</tbody>
	</table>
</body>
</html>