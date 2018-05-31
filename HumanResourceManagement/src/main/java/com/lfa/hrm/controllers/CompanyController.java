/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.hrm.controllers;

import com.lfa.hrm.entity.Company;
import com.lfa.hrm.repositories.CompanyRepository;
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
@RequestMapping(value = "/companies")
public class CompanyController {

    @Autowired
    private CompanyRepository companyRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("companies", companyRepository.findAll());
        return "/companies/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "/companies/add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model) {
        model.addAttribute("company", companyRepository.findById(id).get());
        return "/companies/edit";

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("company") Company company) {
        companyRepository.save(company);
        System.out.println(company);
        return "redirect:/companies?saved";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") Long id) {
        System.out.println(id);
        companyRepository.deleteById(id);
        return "redirect:/companies?deleted";
    }

}
