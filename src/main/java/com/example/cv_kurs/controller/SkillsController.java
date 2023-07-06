package com.example.cv_kurs.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequiredArgsConstructor
@Controller
@RequestMapping
public class SkillsController {

    @GetMapping("/skills")
    public String getHome() {
        return "skills/skills";
    }

}
