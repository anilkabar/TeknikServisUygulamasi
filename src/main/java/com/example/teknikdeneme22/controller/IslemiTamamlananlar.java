package com.example.teknikdeneme22.controller;


import ch.qos.logback.core.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class IslemiTamamlananlar {


    @GetMapping("/IslemTamamlananlar")
    public String islemiTamamlananlar(Model model){


        return "IslemiTamamlananlar";
    }

}


