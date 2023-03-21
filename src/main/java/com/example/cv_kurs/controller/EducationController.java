package com.example.cv_kurs.controller;


import com.example.cv_kurs.model.EducationModel;
import com.example.cv_kurs.service.EducationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class EducationController {

    private final EducationService educationService;

    @GetMapping("/education")
    public String getEducationList(Model model) {
        List<EducationModel> educationModelList = educationService.getAllEducation();
        model.addAttribute("educationModel", educationModelList);
        return "education/education";
    }

    @PostMapping("/education")
    public RedirectView postAddEducation (EducationModel model) {
        educationService.addEducation(model);
        return new RedirectView("/education");
    }

    @PostMapping("/education/{id}")
    public RedirectView postDeleteEducation(@PathVariable("id") Long id) {
        educationService.deleteEducation(id);
        return new RedirectView("/education");
    }

    @GetMapping("/editEducation/{id}")
    public String getEditEducation(@PathVariable("id") Long id, Model model) {
        EducationModel education = educationService.getEducationById(id);
        model.addAttribute("educationModel", education);
        return "education/editEducation";
    }

    @PostMapping("/addEducation/{id}")
    public RedirectView postEditEducation(EducationModel editEducation) {
        educationService.saveEditEducation(editEducation);
        return new RedirectView("/education");
    }



}
