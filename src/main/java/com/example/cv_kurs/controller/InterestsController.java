package com.example.cv_kurs.controller;

import com.example.cv_kurs.model.AboutModel;
import com.example.cv_kurs.model.InterestsModel;
import com.example.cv_kurs.service.InterestsService;
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
public class InterestsController {

    private final InterestsService interestsService;

    @GetMapping("/interests")
    public String getAllInterests(Model model) {
        List<InterestsModel> interestsModelList = interestsService.getAllInterests();
        model.addAttribute("interestsModel", interestsModelList);
        return "interests/interests";
    }

    @PostMapping("/interests")
    public RedirectView postAddInterests(InterestsModel interests) {
        interestsService.addInterests(interests);
        return new RedirectView("/interests");
    }

    @GetMapping("/editInterests/{id}")
    public String getEditInterests(@PathVariable("id") Long id, Model model) {
        InterestsModel interests = interestsService.getInterestsById(id);
        model.addAttribute("interestsModel", interests);
        return "interests/editInterests";
    }

    @PostMapping("/addInterests/{id}")
    public RedirectView postEditInterests(InterestsModel editInterests) {
        interestsService.saveEditInterests(editInterests);
        return new RedirectView("/interests");
    }

    @PostMapping("/interests/{id}")
    public RedirectView postDeleteInterests(@PathVariable("id") Long id){
        interestsService.deleteInterests(id);
        return new RedirectView("/interests");
    }
}
