<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>--%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigationMain.jspf" %>
<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- About-->
    <section class="resume-section" id="about">
        <div class="resume-section-content">
            <c:forEach items="${aboutModel}" var="about">
                <div class="container-fluid">
                    <h1 class="mb-0">
                            ${about.name}
                        <span class="text-primary">${about.surname}</span>
                    </h1>
                    <div class="subheading mb-5">
                            ${about.address}
                        <a href="mailto: plac.paulina@email.com"><span class="email-font">${about.email}</span></a>
                    </div>
                    <div class="row">
                        <div class="container-margin-bottom">
                            <span class="about-me-font">About me</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10">
                            <p class="lead mb-5">${about.description}</p>
                        </div>
                            <%--                        <security:authorize access="hasAnyRole('ADMIN')">--%>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <form method="post" action='<c:url value="/about/${about.id}"/>'>
                                <input type="submit" class="btn-edit" value="Delete"/>
                                    <%--                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                            </form>
                        </div>
                            <%--                        </security:authorize>--%>
                            <%--                        <security:authorize access="hasRole('ADMIN')">--%>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <form method="get" action='<c:url value="/editAbout/${about.id}"/>'>
                                <input type="submit" class="btn-edit" value="Edit"/>
                                    <%--                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                            </form>
                        </div>
                            <%--                        </security:authorize>--%>
                    </div>
                </div>
            </c:forEach>
            <%--            <security:authorize access="hasAnyRole('ADMIN')">--%>
            <div class="container-fluid">
                <form method="post" action='<c:url value="../about"/>'>
                    <div class="container-margin-top">
                        <div class="row">
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                <input class="form-control" type="text" name="name"
                                       placeholder="name">
                            </div>
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                <input class="form-control" type="text" name="surname"
                                       placeholder="surname">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                <input class="form-control" type="text" name="address"
                                       placeholder="address">
                            </div>
                            <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
                                <input class="form-control" type="text" name="email"
                                       placeholder="email">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-10">
                                <textarea maxlength="500" class="form-control" type="text" rows="5" name="description"
                                          placeholder="about me"></textarea>
                            </div>

                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                <input class="btn-edit" type="submit" value="Add">
                                <%--                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <%--            </security:authorize>--%>
            <div class="social-icons">
                <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
            </div>
        </div>
    </section>
</div>

<%@include file="../dynamic/javaScript.jspf" %>

</body>

