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
            <div class="container-fluid">
                <div class="subheading mb-5">
                    Education changes
                </div>
                <form method="post" action='<c:url value="/addEducation/${educationModel.id}"/>'>
                    <div class="container-margin-top">
                        <div class="row">
                            <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                <input class="form-control" type="text" name="university"
                                       value="${educationModel.university}">
                            </div>
                            <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                <input class="form-control" type="text" name="courseDate"
                                       value="${educationModel.courseDate}">
                            </div>
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                <input class="btn-edit" type="submit" value="Save changes">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-11 col-md-11 col-lg-11 col-xl-11">
                                <input class="form-control" type="text" name="academicTitle"
                                       value="${educationModel.academicTitle}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                <input class="form-control" type="text" name="course"
                                       value="${educationModel.course}">
                            </div>
                            <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                <input class="form-control" type="text" name="grade"
                                       value="${educationModel.grade}">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>

<%@include file="../dynamic/javaScript.jspf" %>

</body>

