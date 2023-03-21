package com.example.cv_kurs.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@RequiredArgsConstructor
@Controller
public class HomeController {

//    @GetMapping("/")
//    public RedirectView getHome() {
//        return new RedirectView("/index");
//    }

//    @GetMapping("/")
//    public String getHome() {
//        return "about/about";
//    }

    @GetMapping("/")
    public RedirectView getHome() {
        return new RedirectView("/about");
    }

}
