<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>--%>

<%--<jsp:useBean id="now" class="java.util.Date"/>--%>
<%--<%@ page contentType="text/html; charset=UTF-8" %>--%>
<%--<%@include file="../dynamic/css.jspf" %>--%>

<%--<body id="page-top">--%>
<%--<!-- Navigation-->--%>
<%--<%@include file="../dynamic/navigationMain.jspf" %>--%>

<%--<!-- Page Content-->--%>
<%--<div class="container-fluid p-0">--%>

<%--    <!-- Skills-->--%>
<%--    <section class="resume-section" id="skills">--%>
<%--        <div class="resume-section-content">--%>
<%--            <h2 class="mb-5" style="margin-left: 1rem">Skills</h2>--%>
            <div class="subheading mb-3" style="margin-left: 1rem">Technical Skills</div>
            <ul class="skills-list">
                <c:forEach items="${technicalModel}" var="techSkills">

                    <li>
                        <span><i class="fas fa-check-circle"
                                 style="color: #146c43"></i> ${techSkills.technicalSkills}</span>
                    </li>

                </c:forEach>
            </ul>
            <div class="container-fluid">
                <form method="post" action='<c:url value="../skills/technicalSkills"/>'>
                    <div style="margin-top: 1rem">
                        <div class="row">
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                <input class="form-control" type="text" name="technicalSkills"
                                       placeholder="technical skills">
                            </div>
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                                <input class="btn-edit" type="submit" value="Add">
                            </div>
                        </div>
                    </div>
                </form>
            </div>

<%--        </div>--%>
<%--    </section>--%>
<%--</div>--%>

<%--<%@include file="../dynamic/javaScript.jspf" %>--%>

<%--</body>--%>

