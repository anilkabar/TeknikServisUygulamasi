package com.example.teknikdeneme22.controller;


import com.example.teknikdeneme22.Util.Util;
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
public class CihazEklemeController {




    @Autowired //Enjekte etmemize yarar bu anatosyonu kullanmasaydık constructi
    private ICihazlarRepository cihazlarRepository;

    @Autowired
    private Util util;


    String mesaj="";
    String kontrol="";
    @GetMapping("/CihazEkleme")
    public String home(Model model){
        model.addAttribute("mesaj",mesaj);
        model.addAttribute("kontrol",kontrol);
        kontrol="";
        mesaj="";

        return util.control("CihazEkleme");
    }

    @PostMapping("/CihazEkle")
    public String cihazSave(Cihazlar cihazlar){

        cihazlar.setIsActive(true);

        if (cihazlarRepository.save(cihazlar)!=null){

            kontrol="success";
            mesaj="Cihaz Ekleme İşlemi Başarılı";
            return "redirect:/CihazEkleme";

        }
        else{
            return "redirect:/CihazEkleme";
        }


    }

}
