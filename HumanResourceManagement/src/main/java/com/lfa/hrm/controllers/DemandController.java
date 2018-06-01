/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.hrm.controllers;

import com.lfa.hrm.entity.Demand;
import com.lfa.hrm.repositories.CompanyRepository;
import com.lfa.hrm.repositories.DemandRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ZERO BYTE
 */
@Controller
@RequestMapping(value = "/demands")
public class DemandController {

    @Autowired
    private DemandRepository demandRepository;
    @Autowired
    private CompanyRepository companyRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("demands", demandRepository.findAll());
        
        return "demands/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {
        model.addAttribute("companies", companyRepository.findAll());
        return "/demands/add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(
            @PathVariable("id") Long id, Model model) {
        model.addAttribute("demand", demandRepository.findById(id));
        model.addAttribute("companies", companyRepository.findAll());
        return "/demands/edit";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("Demand") Demand demand) {
        demandRepository.save(demand);
        System.out.println(demand);
        return "redirect:/demands?saved";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") Long id) {
        demandRepository.deleteById(id);
        return "redirect:/demands?deleted";
    }
}
