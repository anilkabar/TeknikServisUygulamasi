package com.example.teknikdeneme22.controller;


import com.example.teknikdeneme22.Util.Util;
import com.example.teknikdeneme22.entities.model.Cihazlar;
import com.example.teknikdeneme22.repositories.ICihazlarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@Controller
public class IslemiTamamlananlar {


    @Autowired
    private ICihazlarRepository cihazlarRepository;


    @Autowired
    private Util util;


    @GetMapping("/IslemTamamlananlar")
    public String islemiTamamlananlar(Model model){
        String controlName="IslemiTamamlananlar";
        List<Cihazlar> cihazlarList=cihazlarRepository.findAllByIsActive(false);
        model.addAttribute("cihazlarList",cihazlarList);
        String control= util.control(controlName);

        return util.control("IslemiTamamlananlar");

    }

}


