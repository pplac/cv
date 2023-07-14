package com.example.cv_kurs.controller;

import com.example.cv_kurs.model.ExperienceModel;
import com.example.cv_kurs.service.ExperienceService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class ExperienceController {

    private final ExperienceService service;

    @GetMapping("/experience")
    public String getAllExperience(Model model) {
        List<ExperienceModel> experienceModelList = service.getAllExperiences();
        model.addAttribute("experienceModel", experienceModelList);
        return "experience/experience";
    }

    @PostMapping("/experience")
    public RedirectView postAddExperience(ExperienceModel experience) {
        service.addExperience(experience);
        return new RedirectView("/experience");
    }

    @GetMapping("/editExperience/{id}")
    public String getEditExperience(@PathVariable("id") Long id, Model model) {
        ExperienceModel experience = service.getExperienceById(id);
        model.addAttribute("experienceModel", experience);
        return "experience/editExperience";
    }

    @PostMapping("/addExperience/{id}")
    public RedirectView postEditExperience(ExperienceModel editExperience) {
        service.saveEditExperience(editExperience);
        return new RedirectView("/experience");
    }

    @PostMapping("/experience/{id}")
    public RedirectView deleteExperience(@PathVariable("id") Long id) {
        service.deleteExperience(id);
        return new RedirectView("/experience");
    }
}
