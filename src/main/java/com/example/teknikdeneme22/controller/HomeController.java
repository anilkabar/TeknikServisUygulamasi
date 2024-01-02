package com.example.teknikdeneme22.controller;


import com.example.teknikdeneme22.entities.model.Cihazlar;
import com.example.teknikdeneme22.repositories.ICihazlarRepository;
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



    @GetMapping("/Home")
    public String home(Model model){
        model.addAttribute("title","deneme");
        return "Home";
    }

    @PostMapping("/CihazEkle")
    public String cihazSave(@Valid @ModelAttribute("cihazEkle") Cihazlar cihazlar){

        Cihazlar cihaz=new Cihazlar();
        cihaz.setId(cihazlar.getId());
        cihaz.setIsletimSistemi(cihazlar.getIsletimSistemi());
        cihaz.setMarka(cihazlar.getMarka());
        cihaz.setModel(cihazlar.getModel());
        cihaz.setSikayet(cihazlar.getSikayet());
        cihaz.setSeriNumarasi("number");
        cihazlarRepository.save(cihaz);

        return "redirect:/Home";
    }
}