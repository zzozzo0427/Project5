<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
		 pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>SOMINSA</title>
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}

		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='delete/'+id;
		}
	</script>
	<script>
		function filterResults() {
			var searchFieldIndex = document.getElementsByName("searchField")[0].selectedIndex;
			var searchText = document.getElementsByName("searchText")[0].value.toLowerCase();

			var table = document.getElementById("list");
			var tr = table.getElementsByTagName("tr");

			for (var i = 1; i < tr.length; i++) {
				var td = tr[i].getElementsByTagName("td")[searchFieldIndex];
				if (td) {
					var textValue = td.textContent || td.innerText;
					if (textValue.toLowerCase().indexOf(searchText) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
</head>


<body>
<h1>SOMINSA</h1>
<div class="container">
	<div class="row">
		<form method="get" name="search">
			<select class="form-control" name="searchField" onchange="filterResults()">
				<option value="0">ID</option>
				<option value="1">Category</option>
				<option value="2">Brand</option>
				<option value="3">Product</option>
				<option value="4">Writer</option>
			</select>
			<input type="text" class="form-control" placeholder="검색어 입력" name="searchText" onkeyup="filterResults()" onkeydown="return event.key != 'Enter';" maxlength="100">
		</form>
	</div>
</div>
<table id="list" width="90%">
	<tr>
		<th>ID</th>
		<th>Category</th>
		<th>Brand</th>
		<th>Product</th>
		<th>Title</th>
		<th>Content</th>
		<th>Rating</th>
		<th>Writer</th>
		<th>Regdate</th>
		<th>Edit</th>
		<th>Delete</th>

	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td><a href="view/${u.seq}">${u.seq}</a></td>
			<td>${u.category}</td>
			<td>${u.brand}</td>
			<td>${u.product}</td>
			<td>${u.title}</td>
			<td><a href="view/${u.seq}">${u.content}</a></td>
			<td>${u.rating}</td>
			<td>${u.writer}</td>
			<td>${u.regdate}</td>

			<td><a href="editform/${u.seq}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
		</tr>

	</c:forEach>
</table>

<br/><button type = "button" onclick="location.href='add/'">New Post</button>

<div style="position: absolute; top: 10px; right: 10px;">
	<a href="login.jsp">Login</a>
</div>

</body>
</html>