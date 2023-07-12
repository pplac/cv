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

            <div class="skills-margins">
                <div class="subheading mb-3" style="margin-left: 1rem">Personal Skills</div>
                <ul class="skills-list">
                    <c:forEach items="${personalModel}" var="personalSkills">
                        <li>
                                ${personalSkills.personalSkills}
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <div class="container-fluid">
                <form method="post" action='<c:url value="../skills/personalSkills"/>'>
                    <div style="margin-top: 1rem">
                        <div class="row">
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                <input class="form-control" type="text" name="personalSkills"
                                       placeholder="personal skills">
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

