/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.hrm.controllers;

import com.lfa.hrm.entity.Skill;
import com.lfa.hrm.repositories.SkillRepository;
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
@RequestMapping(value = "/skills")
public class SkillController {

    @Autowired
    private SkillRepository skillRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("skills",
                skillRepository.findAll());
        return "/skills/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "/skills/add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model) {
        model.addAttribute("skill", skillRepository.findById(id));
        return "/skills/edit";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("skill") Skill skill) {

        skillRepository.save(skill);
        System.out.println(skill);
        return "redirect:/skills?saved";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(
            @PathVariable("id") Long id) {
        System.out.println(id);
        skillRepository.deleteById(id);
        return "redirect:/skills?deleted";
    }

}
