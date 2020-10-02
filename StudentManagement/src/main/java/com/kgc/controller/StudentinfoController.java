package com.kgc.controller;

import com.kgc.pojo.Studentinfo;
import com.kgc.service.StudentinfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class StudentinfoController {
    @Resource
    StudentinfoService studentinfoService;
    @RequestMapping("/list")
    public String list(Model model){
        List<Studentinfo> list=studentinfoService.getlist();
        model.addAttribute("list",list);
        return "/index";
    }
    @RequestMapping("/chabyid/{id}")
    public String chabyid(@PathVariable Long id, Model model){
        List<Studentinfo> listby=studentinfoService.getlistbyid(id);
        model.addAttribute("listby",listby.get(0));
        return  "/upt";
    }
    @RequestMapping("/uptby")
    public String uptby(Studentinfo studentinfo){
        int i=studentinfoService.upt(studentinfo);
        return "redirect:/list";
    }
}
