<!-- Technical Skills-->

<div class="subheading mb-3" style="margin-left: 1rem">Technical Skills</div>
<c:forEach items="${technicalModel}" var="techSkills">
    <div class="row">
        <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
            <ul class="skills-list">
                <li>
                        <span><i class="fas fa-check-circle"
                                 style="color: #146c43"></i> ${techSkills.technicalSkills}</span>
                </li>
            </ul>
        </div>
        <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
            <form method="post" action='<c:url value="/deleteTechnicalSkills/${techSkills.id}"/>'>
                <input type="submit" class="btn-edit" value="Delete"/>
            </form>
        </div>
    </div>
</c:forEach>
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

