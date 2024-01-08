package com.example.teknikdeneme22.controller;


import com.example.teknikdeneme22.entities.model.Cihazlar;
import com.example.teknikdeneme22.repositories.ICihazlarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@Controller
public class IslemBekleyenler {

    @Autowired
    private ICihazlarRepository cihazlarRepository;


    @GetMapping("/IslemBekleyenler")
    public String bekleyenler(Model model){

        List<Cihazlar> cihazlarList=cihazlarRepository.findAllByIsActive(true);
        model.addAttribute("cihazlarList",cihazlarList);
        return "IslemBekleyenler";
    }

    @GetMapping("/IslemYap/{id}")
    public String FirmaSil(@PathVariable Long id){

        Optional<Cihazlar> optionalCihazlar=cihazlarRepository.findById(id);
        if (optionalCihazlar.isPresent()){
            optionalCihazlar.get().setIsActive(false);
            cihazlarRepository.saveAndFlush(optionalCihazlar.get());

            return "redirect:/IslemBekleyenler";
        }


        return "IslemBekleyenler";
    }
}

