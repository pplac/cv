<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>--%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigationMain.jspf" %>

<!-- Page Content-->
<div class="container-fluid p-0">

    <!-- Experience-->
    <section class="resume-section" id="experience">
        <div class="resume-section-content">
            <h2 class="mb-5" style="margin-left: 1rem">Experience</h2>

            <c:forEach items="${experienceModel}" var="experience">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9 col-md-9 col-lg-7 col-xl-7">
                            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                                <div class="flex-grow-1">
                                    <h3 class="mb-0">${experience.jobTitle}</h3>
                                    <div class="subheading mb-3">${experience.companyName}</div>
                                    <p>${experience.jobDescription}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-3 col-xl-3">
                            <div class="flex-shrink-0"><span class="text-primary">${experience.workDate}</span>
                            </div>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <form method="post" action='<c:url value="/experience/${experience.id}"/>'>

                                <input type="submit" class="btn-edit" value="Delete"/>
                            </form>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <form method="get" action='<c:url value="/editExperience/${experience.id}"/>'>
                                <input type="submit" class="btn-edit" value="Edit"/>
                            </form>
                        </div>

                    </div>

                </div>
            </c:forEach>

            <div class="container-fluid">
                <div class="container-margin-top">
                    <form method="post" action='<c:url value="/experience"/>'>
                        <div class="row">
                            <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                <input class="form-control" type="text" name="jobTitle"
                                       placeholder="stanowisko">
                            </div>
                            <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                <input class="form-control" type="text" name="workDate"
                                       placeholder="rozpoczęcie - zakończenie">
                            </div>
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                <input class="btn-edit" type="submit" value="Add">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                <input class="form-control" type="text" name="companyName"
                                       placeholder="nazwa firmy">
                            </div>
                            <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                <textarea class="form-control" type="text" rows="5" name="jobDescription"
                                          placeholder="opisz swoje obowiązki"></textarea>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file="../dynamic/javaScript.jspf" %>

</body>

