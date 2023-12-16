<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 보기</title>
</head>
<body>
<h1>View</h1>
<table>
    <tr>
        <td>카테고리:</td>
        <td>${u.category}</td>
    </tr>
    <tr>
        <td>브랜드:</td>
        <td>${u.brand}</td>
    </tr>
    <tr>
        <td>제품:</td>
        <td>${u.product}</td>
    </tr>
    <tr>
        <td>제목:</td>
        <td>${u.title}</td>
    </tr>
    <tr>
        <td>내용:</td>
        <td>${u.content}</td>
    </tr>
    <tr>
        <td>평점:</td>
        <td>${u.rating}</td>
    </tr>
    <tr>
        <td>작성자:</td>
        <td>${u.writer}</td>
    </tr>
</table>
<input type="button" value="Cancel" onclick="history.back()"/></td>

</body>
</html>
