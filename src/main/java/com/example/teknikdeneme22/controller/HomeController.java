package com.example.teknikdeneme22.controller;


import com.example.teknikdeneme22.Util.Util;
import com.example.teknikdeneme22.entities.model.Cihazlar;
import com.example.teknikdeneme22.repositories.ICihazlarRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {


    @Autowired
    private ICihazlarRepository cihazlarRepository;
    private Cihazlar cihazlarModel;
    @Autowired
    Util util;


    @Autowired
    HttpServletRequest req;

    String mesaj="";
    String kontrol="";



    @GetMapping("/Home")
    public String home(Model model){
        int islemBekleyenToplamCihazSayisi=cihazlarRepository.findAllByIsActive(true).size();
        int islemTamamlananCihazSayisi=cihazlarRepository.findAllByIsActive(false).size();
        model.addAttribute("islemTamamlananCihazSayisi",islemTamamlananCihazSayisi);
        model.addAttribute("islemBekleyenCihazSayisi",islemBekleyenToplamCihazSayisi);
        //model.addAttribute("kontrol",kontrol);
        model.addAttribute("mesaj",mesaj);
        model.addAttribute("kontrol",kontrol);
        kontrol="";
        mesaj="";

        return util.control("Home");
    }





}
