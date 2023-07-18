<!-- Personal Skills-->
<div class="skills-margins">
    <div class="subheading mb-3" style="margin-left: 1rem">Personal Skills</div>
    <c:forEach items="${personalModel}" var="personalSkills">
    <div class="row">
        <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
            <ul class="skills-list">
                <li>
                        ${personalSkills.personalSkills}
                </li>
            </ul>
        </div>
        <security:authorize access="hasAnyRole('ADMIN')">
            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                <form method="post" action='<c:url value="/deletePersonalSkills/${personalSkills.id}"/>'>
                    <input type="submit" class="btn-edit" value="Delete"/>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </security:authorize>
    </div>
    </c:forEach>
    <security:authorize access="hasAnyRole('ADMIN')">
    <div class="container-fluid">
        <form method="post" action='<c:url value="../skills/personalSkills"/>'>
            <div style="margin-top: 1rem">
                <div class="row">
                    <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                        <input class="form-control" type="text" name="personalSkills"
                               placeholder="personal skills">
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                        <input class="btn-edit" type="submit" value="Add">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </div>
                </div>
            </div>
        </form>
    </div>
    </security:authorize>


