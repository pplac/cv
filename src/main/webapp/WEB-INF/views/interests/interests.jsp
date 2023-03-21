<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigationMain.jspf" %>

<!-- Page Content-->
<div class="container-fluid p-0">

    <!-- Interests-->
    <section class="resume-section" id="interests">
        <div class="resume-section-content">
            <h2 class="mb-5">Interests</h2>
            <c:forEach items="${interestsModel}" var="interests">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10">
                            <p>${interests.interestsFirstAkapit}</p>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <form method="post" action='<c:url value="/interests/${interests.id}"/>'>
                                <input type="submit" class="btn-edit" value="Delete"/>
                            </form>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                        <form method="get" action='<c:url value="/editInterests/${interests.id}"/>'>
                        <input type="submit" class="btn-edit" value="Edit"/>
                        </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
<c:forEach items="${interestsModel}" var="interests2">
            <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10">
                            <p class="mb-0">${interests.interestsNextAkapit}</p>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                        <form method="post" action='<c:url value="/interests/${interests2.id}"/>'>
                            <input type="submit" class="btn-edit" value="Delete"/>
                        </form>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <form method="get" action='<c:url value="/editInterests/${interests2.id}"/>'>
                                <input type="submit" class="btn-edit" value="Edit"/>
                            </form>
                        </div>
                    </div>
                </div>

        </c:forEach>

            <form method="post" action='<c:url value="/interests"/>'>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10">
                            <textarea class="form-control" type="text" name="interestsFirstAkapit"
                                      placeholder="pierwszy akapit">
                                </textarea>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <input class="btn-edit" type="submit" value="Add">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10">
                            <textarea class="form-control" type="text" name="interestsNextAkapit"
                                      placeholder="kolejny akapit">
                            </textarea>
                        </div>
                        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                            <input class="btn-edit" type="submit" value="Add">
                        </div>
                    </div>

                </div>
            </form>
        </div>

    </section>
</div>

<%@include file="../dynamic/javaScript.jspf" %>

</body>
</html>
