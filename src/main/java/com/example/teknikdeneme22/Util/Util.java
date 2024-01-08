package com.example.teknikdeneme22.Util;

import com.example.teknikdeneme22.repositories.ICihazlarRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class Util {


    @Autowired
    private static ICihazlarRepository cihazlarRepository;


     @Autowired
    private HttpServletRequest req;

    public String control(String page){
        boolean status=req.getSession().getAttribute("users")==null;
        if (!status){
            System.out.println(req);
            return page;

        }

        return "redirect:/";
    }


    public IslemBekleyenVeTAmamlananlar IslemBekleyenveTamamlananlar(){
        int islemBekleyenToplamCihazSayisi=cihazlarRepository.findAllByIsActive(true).size();
        int islemTamamlananCihazSayisi=cihazlarRepository.findAllByIsActive(false).size();

        return new IslemBekleyenVeTAmamlananlar(12,1);
    }

    public String logout() {

        // all session remove
        req.getSession().invalidate();

        // single session remove
        req.getSession().removeAttribute("kullanici");

        return "redirect:/";
    }



}
