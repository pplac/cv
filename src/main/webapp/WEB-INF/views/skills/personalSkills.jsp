
<!-- Personal Skills-->
<div class="skills-margins">
    <div class="subheading mb-3" style="margin-left: 1rem">Personal Skills</div>
    <c:forEach items="${personalModel}" var="personalSkills">
    <div class="row">
        <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
            <ul class="skills-list">
                <li>
                        ${personalSkills.personalSkills}
                </li>
            </ul>
        </div>
        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
            <form method="post" action='<c:url value="/deletePersonalSkills/${personalSkills.id}"/>'>
                <input type="submit" class="btn-edit" value="Delete"/>
            </form>
        </div>
    </div>
    </c:forEach>
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


