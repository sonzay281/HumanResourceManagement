/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.hrm.controllers;

import com.lfa.hrm.entity.Education;
import com.lfa.hrm.repositories.EducationRepository;
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
@RequestMapping(value = "/educations")
public class EducationController {

    @Autowired
    private EducationRepository educationRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("educations",
                educationRepository.findAll());
        return "/educations/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "/educations/add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(
            @PathVariable("id") Long id, Model model) {
        model.addAttribute("education",
                educationRepository.findById(id).get());
        return "/educations/edit";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(
            @ModelAttribute("education") Education education) {
        educationRepository.save(education);
        System.out.println(education);
        return "redirect:/educations?saved";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(
            @PathVariable("id") Long id) {
        educationRepository.deleteById(id);
        return "redirect:/educations?deleted";

    }
}
