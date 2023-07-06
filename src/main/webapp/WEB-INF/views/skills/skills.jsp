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
            <div class="subheading mb-3">Technical Skills</div>
            <ul class="list-inline dev-icons">
                <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                <li class="list-inline-item"><i class="fab fa-js-square"></i></li>
                <li class="list-inline-item"><i class="fab fa-angular"></i></li>
                <li class="list-inline-item"><i class="fab fa-react"></i></li>
                <li class="list-inline-item"><i class="fab fa-node-js"></i></li>
                <li class="list-inline-item"><i class="fab fa-sass"></i></li>
                <li class="list-inline-item"><i class="fab fa-less"></i></li>
                <li class="list-inline-item"><i class="fab fa-wordpress"></i></li>
                <li class="list-inline-item"><i class="fab fa-gulp"></i></li>
                <li class="list-inline-item"><i class="fab fa-grunt"></i></li>
                <li class="list-inline-item"><i class="fab fa-npm"></i></li>
            </ul>
            <div class="subheading mb-3">Personal Skills</div>
            <ul class="fa-ul mb-0">
                <li>
                    <span class="fa-li"><i class="fas fa-check-circle" ></i></span>
                    Ability to work in a team
                </li>
                <li>
                    <span class="fa-li"><i class="fas fa-check-circle" style="color: #146c43"></i></span>
                    Communicativeness
                </li>
                <li>
                    <span class="fa-li"><i class="fas fa-check-circle" style="color: #146c43"></i></span>
                    Accuracy in every task
                </li>
                <li>
                    <span class="fa-li"><i class="fas fa-check-circle" style="color: #146c43"></i></span>
                    Commitment at work
                </li>
            </ul>
        </div>
    </section>
</div>

<%@include file="../dynamic/javaScript.jspf" %>

</body>

