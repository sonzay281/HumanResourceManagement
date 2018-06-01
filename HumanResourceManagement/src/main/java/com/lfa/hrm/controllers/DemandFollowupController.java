/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.hrm.controllers;

import com.lfa.hrm.entity.DemandFollowup;
import com.lfa.hrm.repositories.DemandFollowupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author ZERO BYTE
 */
@Controller
@RequestMapping(value = "/demands/followups")
public class DemandFollowupController {

    @Autowired
    private DemandFollowupRepository demandFolloupRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("followups",
                demandFolloupRepository.findAll());
        return "demandfollowups/index";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public @ResponseBody
    String save(@ModelAttribute("DemandFollowup") DemandFollowup demandFollow) {

        demandFolloupRepository.save(demandFollow);
        System.out.println(demandFollow);
        return "success";
    }
}
