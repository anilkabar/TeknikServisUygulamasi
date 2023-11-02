package com.example.teknikdestek3.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/Home")
    public String Home(Model model){

        return "Views/Home";
    }

    @GetMapping("/Layout")
    public String Layout(){
        return "Views/Main";
    }
}
