<!-- Technical Skills-->
<div class="subheading mb-3" style="margin-left: 1rem">Technical Skills</div>
<c:forEach items="${technicalModel}" var="techSkills">
    <div class="row">
        <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
            <ul class="skills-list">
                <li>
                        <span><i class="fas fa-check-circle"
                                 style="color: #d48a6e"></i> ${techSkills.technicalSkills}</span>
                </li>
            </ul>
        </div>
        <security:authorize access="hasAnyRole('ADMIN')">
            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                <form method="post" action='<c:url value="/deleteTechnicalSkills/${techSkills.id}"/>'>
                    <input type="submit" class="btn-edit" value="Delete"/>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </security:authorize>
    </div>
</c:forEach>
<security:authorize access="hasAnyRole('ADMIN')">
    <div class="container-fluid">
        <form method="post" action='<c:url value="../skills/technicalSkills"/>'>
            <div style="margin-top: 1rem">
                <div class="row">
                    <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                        <input class="form-control" type="text" name="technicalSkills"
                               placeholder="technical skills">
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


