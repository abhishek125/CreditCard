<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>credit card statement</title>
<link rel=stylesheet type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</head>
<body>
	<div class="panel-heading">
		<ul class="nav nav-tabs">
			<li class="active">
				<a href="#tab1default" data-toggle="tab">user info</a>
			</li>
			<li>
				<a href="#tab2default" data-toggle="tab">Repayment status</a>
			</li>
			<li>
				<a href="#tab3default" data-toggle="tab">bill amount</a>
			</li>
			<li>
				<a href="#tab4default" data-toggle="tab">previous amount</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/">go to home</a>
			</li>
			<li>
				<a href="http://github.com/abhishek125/">me on github</a>
			</li>
		</ul>
	</div>
	<div class="tab-content">
		<div class="tab-pane fade in active" id="tab1default">
		<h3>basic user info</h3>
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
						<th>default payment next month</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.limitbal}</td>
						<td>${user.sex}</td>
						<td>
							<c:choose>
								<c:when test="${user.education eq 'unknown2' }">unknown</c:when>
								<c:when test="${user.education eq 'high_school' }">high school</c:when>
								<c:otherwise>${user.education}</c:otherwise>
							</c:choose>
						</td>
						<td>${user.maritalStatus}</td>
						<td>${user.age}</td>
						<td>${user.default_payment_next_month}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="tab2default">
			<h3>Repayment status for last 6 months<small>(all amounts are in dollars)</small></h3> 
			<table class="table table-striped">
				<thead>
					<tr>
						<th>april</th>
						<th>may</th>
						<th>june</th>
						<th>july</th>
						<th>august</th>
						<th>september</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<c:choose>
								<c:when test="${user.pay_status6 eq -2 }">no bill amount</c:when>
								<c:when test="${user.pay_status6 eq -1 }">paid duly</c:when>
								<c:otherwise>payment delay for ${user.pay_status6} months</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${user.pay_status5 eq -2 }">no bill amount</c:when>
								<c:when test="${user.pay_status5 eq -1 }">paid duly</c:when>
								<c:otherwise>payment delay for ${user.pay_status5} months</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${user.pay_status4 eq -2 }">no bill amount</c:when>
								<c:when test="${user.pay_status4 eq -1 }">paid duly</c:when>
								<c:otherwise>payment delay for ${user.pay_status4} months</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${user.pay_status3 eq -2 }">no bill amount</c:when>
								<c:when test="${user.pay_status3 eq -1 }">paid duly</c:when>
								<c:otherwise>payment delay for ${user.pay_status3} months</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${user.pay_status2 eq -2 }">no bill amount</c:when>
								<c:when test="${user.pay_status2 eq -1 }">paid duly</c:when>
								<c:otherwise>payment delay for ${user.pay_status2} months</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${user.pay_status1 eq -2 }">no bill amount</c:when>
								<c:when test="${user.pay_status1 eq -1 }">paid duly</c:when>
								<c:otherwise>payment delay for ${user.pay_status1} months</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="tab3default">
			<h3>Amount of bill statement for last 6 months<small>(all amounts are in dollars)</small></h3>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>april</th>
						<th>may</th>
						<th>june</th>
						<th>july</th>
						<th>august</th>
						<th>september</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${user.billamt6}</td>
						<td>${user.billamt5}</td>
						<td>${user.billamt4}</td>
						<td>${user.billamt3}</td>
						<td>${user.billamt2}</td>
						<td>${user.billamt1}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="tab4default">
			<h3>Amount of previous payment for last 6 months<small>(all amounts are in dollars)</small></h3>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>april</th>
						<th>may</th>
						<th>june</th>
						<th>july</th>
						<th>august</th>
						<th>september</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${user.payamt6}</td>
						<td>${user.payamt5}</td>
						<td>${user.payamt4}</td>
						<td>${user.payamt3}</td>
						<td>${user.payamt2}</td>
						<td>${user.payamt1}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>