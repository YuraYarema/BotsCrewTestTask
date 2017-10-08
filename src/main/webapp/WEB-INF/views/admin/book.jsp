<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
body {
	background-color: #DBE9F7;
	font-variant: small-caps;
	font-weight: 600;
}
hr{
	color:black;
    border: 0;
    height: 1px;
    background-image: -webkit-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
    background-image:    -moz-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
    background-image:     -ms-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
    background-image:      -o-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
}
</style>
<div class="row">
	<div class="col-md-2 col-xs-2"></div>
	<div class="col-md-8 col-xs-8">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<form:form class="form-horizontal" action="/admin/book"
					method="POST" modelAttribute="book">
					<div class="form-group">
						<label for="book_name" class="col-sm-2 control-label">Book
							Name</label>
						<div class="col-sm-10">
							<form:input class="form-control" path="book_name" id="book_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="author_name" class="col-sm-2 control-label">Author
							Name</label>
						<div class="col-sm-10">
							<form:input class="form-control" path="author_name"
								id="author_name" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success">Create</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-xs-2"></div>
			<div class="col-md-10 col-xs-10">
				<c:if test="${not empty books}">
					<div class="row">
						<div class="col-md-3 col-xs-3">
							<h3>Book name</h3>
						</div>
						<div class="col-md-3 col-xs-3">
							<h3>Author name</h3>
						</div>
						<div class="col-md-3 col-xs-3">
							<h3>Update</h3>
						</div>
						<div class="col-md-3 col-xs-3">
							<h3>Delete</h3>
						</div>
					</div>
						<hr>
				</c:if>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-xs-2"></div>
			<div class="col-md-10 col-xs-10">
				<c:forEach items="${books}" var="book">
					<div class="row">
						<div class="col-md-3 col-xs-3">${book.book_name}</div>
						<div class="col-md-3 col-xs-3">${book.author_name}</div>
						<div class="col-md-3 col-xs-3">
							<a class="btn btn-warning" href="/admin/book/update/${book.id}">update</a>
						</div>
						<div class="col-md-3 col-xs-3">
							<a class="btn btn-danger" href="/admin/book/delete/${book.id}">delete</a>
						</div>
					</div>
					<hr>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="col-md-2 col-xs-12"></div>
</div>