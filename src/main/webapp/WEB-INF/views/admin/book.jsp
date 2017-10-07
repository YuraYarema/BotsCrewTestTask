<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
body {
	background-color: #DBE9F7;
	font-variant: small-caps;
}
</style>
<div class="row">
	<div class="col-md-3 col-xs-12"></div>
	<div class="col-md-7 col-xs-12">
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
		<div class="col-md-12 col-xs-12">
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
		</div>
		<div class="col-md-12 col-xs-12">
			<c:forEach items="${books}" var="book">
				<div class="row">
					<div class="col-md-3 col-xs-3">${book.book_name}</div>
					<div class="col-md-3 col-xs-3">${book.author_name}</div>
					<ul></ul>
					<div class="col-md-3 col-xs-3">
						<a class="btn btn-warning" href="/admin/book/update/${book.id}">update</a>
					</div>
					<div class="col-md-3 col-xs-3">
						<a class="btn btn-danger" href="/admin/book/delete/${book.id}">delete</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="col-md-2 col-xs-12"></div>
</div>