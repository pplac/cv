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

    <!-- About-->
    <section class="resume-section" id="about">
        <div class="resume-section-content">


            <div class="container-fluid">

                <div class="subheading mb-5">
                    About changes
                </div>

                <form method="post" action='<c:url value="/addAbout/${aboutModel.id}"/>'>

                    <div class="container-margin-top">
                        <div class="row">
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                <input class="form-control" type="text" name="name"
                                       value="${aboutModel.name}">
                            </div>
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                <input class="form-control" type="text" name="surname"
                                       value="${aboutModel.surname}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                <input class="form-control" type="text" name="address"
                                       value="${aboutModel.address}">
                            </div>
                            <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
                                <input class="form-control" type="text" name="email"
                                       value="${aboutModel.email}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10">

                                <textarea class="form-control" type="text" name="description" rows="5">
                                    ${aboutModel.description}
                                </textarea>
                            </div>

                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                <input class="btn-edit" type="submit" value="Save changes">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
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

