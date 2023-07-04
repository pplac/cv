package com.example.cv_kurs.controller;


import com.example.cv_kurs.model.AboutModel;
import com.example.cv_kurs.service.AboutService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@RequiredArgsConstructor
@Controller
@RequestMapping
public class AboutController {

    private final AboutService aboutService;

    @GetMapping("/about")
    public String getAllAbout(Model model) {
        List<AboutModel> list = aboutService.getALLAbout();
        model.addAttribute("aboutModel", list);
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return "about/about";
    }

    @PostMapping("/about")
    public RedirectView postAddAbout(AboutModel about) {
        aboutService.addAbout(about);
        return new RedirectView("/about");
    }

    @GetMapping("/editAbout/{id}")
    public String getEditAbout(@PathVariable("id") Long id, Model model){
        AboutModel about = aboutService.getAboutById(id);
        model.addAttribute("aboutModel", about);
        return "about/editAbout";
    }

    @PostMapping("/about/{id}")
    public RedirectView postDeleteAbout(@PathVariable("id") Long id) {
        aboutService.deleteAbout(id);
        return new RedirectView("/about");
    }

    @PostMapping("/addAbout/{id}")
    public RedirectView postEditAbout(AboutModel editAbout){
        aboutService.saveEditAbout(editAbout);
        return new RedirectView("/about");
    }





//    @PatchMapping("{id}")
//    public RedirectView patchDescription(@PathVariable("id") Long id, @PathVariable("description") String description){
//        aboutService.updateAboutDescription(id, description);
//        return new RedirectView("index");
//    }

}
