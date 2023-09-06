/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.controllers;

import com.htran.pojo.Job;
import com.htran.service.JobService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ACER
 */
@Controller
public class JobDetailController {
     @Autowired
    private JobService jobService;
     
    @GetMapping("/jobDetail/{id}")
    public String jobDetail(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("jobDetails", this.jobService.getJobById(id));  
        return "jobDetail";
    }
    
}