/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.hrm.controllers;

import com.lfa.hrm.entity.EmailTemplate;
import com.lfa.hrm.repositories.EmailTemplateRepository;
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
@RequestMapping(value = "/emailtemplates")
public class EmailTemplateController {

    @Autowired
    private EmailTemplateRepository emailTemplateRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("emailtemplates", emailTemplateRepository.findAll());
        return "/emailtemplates/index";
    }

    @RequestMapping(value = "/add")
    public String add() {
        return "/emailtemplates/add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model) {
        model.addAttribute("emailtemplate", emailTemplateRepository.findById(id));
        return "/emailtemplates/edit";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("emailtemplate") EmailTemplate emailTemplate) {
        emailTemplateRepository.save(emailTemplate);
        System.out.println(emailTemplate);
        return "redirect:/emailtemplates?operation=success";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") Long id) {
        emailTemplateRepository.deleteById(id);
        return "redirect:/emailtemplates?status=deleted";
    }

}
