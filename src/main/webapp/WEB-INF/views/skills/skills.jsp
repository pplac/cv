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

    <!-- Skills-->
    <section class="resume-section" id="skills">
        <div class="resume-section-content">
            <h2 class="mb-5" style="margin-left: 1rem">Skills</h2>
<%--            <div class="subheading mb-3" style="margin-left: 1rem">Technical Skills</div>--%>
<%--            <ul class="skills-list">--%>
<%--                <c:forEach items="${skillsModel}" var="skills">--%>

<%--                    <li>--%>
<%--                        <i class="fas fa-check-circle"--%>
<%--                              style="color: #146c43">${skills.technicalSkills}</i>--%>
<%--                    </li>--%>

<%--                </c:forEach>--%>
<%--            </ul>--%>
<%--            <div class="container-fluid">--%>
<%--                <form method="post" action='<c:url value="../skills/technicalSkills"/>' id="form1">--%>
<%--                    <div style="margin-top: 1rem">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">--%>
<%--                                <input class="form-control" type="text" name="technicalSkills"--%>
<%--                                       placeholder="technical skills">--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">--%>
<%--                                <input class="btn-edit" type="submit" name="AddTechnical" value="AddTechnical">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>

<%--            <div class="skills-margins">--%>
<%--                <div class="subheading mb-3" style="margin-left: 1rem">Personal Skills</div>--%>
<%--                <ul class="skills-list">--%>
<%--                    <c:forEach items="${skillsModel}" var="personalSkills">--%>
<%--                        <li>--%>
<%--                                ${personalSkills.personalSkills}--%>
<%--                        </li>--%>
<%--                    </c:forEach>--%>
<%--                </ul>--%>
<%--            </div>--%>

<%--            <div class="container-fluid">--%>
<%--                <form method="post" action='<c:url value="../skills/personalSkills"/>' id="form2">--%>
<%--                    <div style="margin-top: 1rem">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">--%>
<%--                                <input class="form-control" type="text" name="personalSkills"--%>
<%--                                       placeholder="personal skills">--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">--%>
<%--                                <input class="btn-edit" type="submit" name="AddPersonal" value="AddPersonal">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>


    <%@include file="../skills/technicalSkills.jsp" %>
    <%@include file="../skills/personalSkills.jsp" %>

        </div>
    </section>
</div>

<%@include file="../dynamic/javaScript.jspf" %>

</body>

