<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bem vindo!</title>

<c:set var="path" value="${pageContext.request.contextPath}"
	scope="request" />

<style type="text/css">
@IMPORT url("${path}/static/bootstrap/css/bootstrap.min.css");

@IMPORT url("${path}/static/bootstrap/css/bootstrap-theme.min.css");
</style>

<script type="text/javascript"
	src="${path}/static/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="${path}/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/static/js/pizzas.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="../menu_cliente.jsp"></jsp:include>

		<section>
			<div id="consulta-pizzarias" class="well">
				<label for="pizza_pesquisa">Que pizza você quer hoje?</label> <select
					class="form-control">
					<c:forEach items="${nomesPizzas}" var="nomePizza">
						<option value="${nomePizza}">${nomePizza}</option>
					</c:forEach>
				</select>
			</div>
			<div id="secao-pizzarias"></div>
		</section>
	</div>
</body>
</html>