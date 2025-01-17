package com.example.cv_kurs.controller;


import com.example.cv_kurs.model.PersonalSkillsModel;
import com.example.cv_kurs.model.TechnicalSkillsModel;
import com.example.cv_kurs.service.PersonalSkillsService;
import com.example.cv_kurs.service.TechnicalSkillsService;
import lombok.RequiredArgsConstructor;
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
@RequestMapping
public class SkillsController {

    private final TechnicalSkillsService technicalSkillsService;
    private final PersonalSkillsService personalSkillsService;

    @GetMapping("/skills")
    public String getAllSkills(Model model) {
        List<TechnicalSkillsModel> list = technicalSkillsService.getAllTechnicalSkills();
        List<PersonalSkillsModel> list2 = personalSkillsService.getAllPersonalSkills();
        model.addAttribute("technicalModel", list);
        model.addAttribute("personalModel", list2);
        return "skills/skills";
    }

    @PostMapping("/skills/technicalSkills")
    public RedirectView postAddTechnicalSkills(TechnicalSkillsModel technicalSkills) {
        technicalSkillsService.addTechnicalSkills(technicalSkills);
        return new RedirectView("/skills");
    }

    @PostMapping("/skills/personalSkills")
    public RedirectView postAddPersonalSkills(PersonalSkillsModel personalSkills) {
        personalSkillsService.addPersonalSkills(personalSkills);
        return new RedirectView("/skills");
    }

    @PostMapping("/deleteTechnicalSkills/{id}")
    public RedirectView postDeleteTechnicalSkills(@PathVariable("id") Long id) {
        technicalSkillsService.deleteTechnicalSkills(id);
        return new RedirectView("/skills");
    }

    @PostMapping("/deletePersonalSkills/{id}")
    public RedirectView postDeletePersonalSkills(@PathVariable("id") Long id) {
        personalSkillsService.deletePersonalSkills(id);
        return new RedirectView("/skills");
    }
}
