<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
 * <pre>
 * 상단바, 상단메뉴, 좌측메뉴, Footer, js, css를 포함하는 JSP
 * </pre>
 * [[개정이력(Modification Information)]]
 * 수정일        수정자       수정내용
 * --------     --------    ----------------------
 * 2017.01.24      KJH        최초작성
 * 2017.01.30      KJH        추가작성 
 * 2017.02.10      KJH        추가작성
 * 2017.02.16      KJH        dynamicCSS
 * Copyright (c) 2017 by DDIT All right reserved
 --%>

<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.addHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 1L);
%>

<!DOCTYPE html>
<html>
<head>
<title>${manageVO.mng_Univ_Nm}<decorator:title /></title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<decorator:head />
</head>
<body>
<decorator:body />

<!-- Footer 시작 -->
<!-- <footer class="footer container-fluid text-center"> -->
<footer class="footer text-center">
	<p></p>
</footer>
<!-- Footer 끝 -->

</body>

<!--  ============= css =============  -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!--  ============= js =============  -->
<script src="https://code.jquery.com/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- //////////////////////////////////// -->

</html>
