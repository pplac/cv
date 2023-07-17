<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigationMain.jspf" %>
<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Education-->
    <section class="resume-section" id="education">
        <div class="resume-section-content">
            <h2 class="mb-5" style="margin-left: 1rem">Education</h2>
            <c:forEach items="${educationModel}" var="education">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-md-8 col-lg-7 col-xl-7">
                            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                                <div class="flex-grow-1">
                                    <h3 class="mb-0">${education.university}</h3>
                                    <div class="subheading mb-3">${education.academicTitle}</div>
                                    <div>${education.course}</div>
                                    <p>${education.grade}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-3 col-xl-3">
                            <div class="flex-shrink-0"><span class="text-primary">${education.courseDate}</span>
                            </div>
                        </div>
                        <security:authorize access="hasAnyRole('ADMIN')">
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                <form method="post" action='<c:url value="/education/${education.id}"/>'>
                                    <input type="submit" class="btn-edit" value="Delete"/>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>
                            </div>
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                <form method="get" action='<c:url value="/editEducation/${education.id}"/>'>
                                    <input type="submit" class="btn-edit" value="Edit"/>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>
                            </div>
                        </security:authorize>
                    </div>
                </div>
            </c:forEach>
            <security:authorize access="hasAnyRole('ADMIN')">
                <div class="container-fluid">
                    <form method="post" action='<c:url value="../education"/>'>
                        <div class="container-margin-top">
                            <div class="row">
                                <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                    <input class="form-control" type="text" name="university"
                                           placeholder="uczelnia">
                                </div>
                                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                    <input class="form-control" type="text" name="courseDate"
                                           placeholder="data">
                                </div>
                                <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                    <input class="btn-edit" type="submit" value="Add">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-11 col-md-11 col-lg-11 col-xl-11">
                                    <input class="form-control" type="text" name="academicTitle"
                                           placeholder="tytuł">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                    <input class="form-control" type="text" name="course"
                                           placeholder="kierunek">
                                </div>
                                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                    <input class="form-control" type="text" name="grade"
                                           placeholder="ocena">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </security:authorize>
        </div>
    </section>
</div>

<%@include file="../dynamic/javaScript.jspf" %>

</body>

