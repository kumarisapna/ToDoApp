<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@include file="./base.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><c:out value="${ page}"></c:out></title>
</head>
<body>
	<div class="container">
		<h2 class="text-center mt-2">Welcome to TODO Manager</h2>
		 <c:if test="${not empty msg}">
		<div class="alert alert-success">
			<b><c:out value="${msg }"></c:out></b>
		</div>
		</c:if>
		
		<div class="row mt-5">
			<div class="col-md-2">
				
				<div class="list-group">
					<button type="button" 
					class="list-group-item list-group-item-action active btn btn-info">
						Menu </button>
						
						 <a href="<c:url value='/add'></c:url>"
						  class="list-group-item list-group-item-action">
						 Add Todo</a> 
						 
						<a href="<c:url value='/home'></c:url>"
						class="list-group-item list-group-item-action">
						 View Todo</a>
					
				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home' }">
				
				<h2 class="text-center">All TODOS</h2>
				
				
				<c:forEach items="${ todos}" var="t">
				<div class="card">
					<div class="card-body">
						<h3><c:out value="${t.todoTitle}"/></h3>
							<p><c:out value="${t.todoContent}"></c:out></p>
					</div>
					
				</div>
					
				</c:forEach>
				
				</c:if>
				
				<c:if test="${page=='add' }">
				<h2 class="text-center">Add TODO</h2>
				
				<br>
				<form:form action="${pageContext.request.contextPath }/saveTodo" method="post" modelAttribute="todo">
				
				<div class="form-group">
					<form:input path="todoTitle" 
					cssClass="form-control"
					placeholder="Enter your Title"/>
				</div>
					
				
				<div class="form-group">
					<form:textarea path="todoContent"
					cssClass="form-control"
					cssStyle="height:300px;"
					placeholder="Enter your Content"/>	
				</div>
				
				<div class="container text-center">
					<button class="btn btn-outline-success">Add TODO</button>
				
				</div>
				
				
				</form:form>
				
				</c:if>
				
			</div>
		</div>

	</div>
</body>
</html>