package com.minetoolz.website.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.minetoolz.website.models.Tool;


@Controller
class ToolsController
{
    @PersistenceContext
    private EntityManager entityManager;


    @RequestMapping("/tools/categories/{category}/")
    public String tools(@PathVariable @ModelAttribute String category,
                        ModelMap modelMap)
    {
        modelMap.addAttribute("tools", entityManager.createQuery(
                "SELECT t FROM Tool t ORDER BY name").getResultList());
        return "tools";
    }

    @RequestMapping("/tools/")
    public String tools(ModelMap modelMap)
    {
        return tools(null, modelMap);
    }


    @Transactional
    @RequestMapping("/tools/populate-database")
    public String populateDatabase()
    {
        Tool tool = new Tool();
        tool.setUrlName("google-docs");
        tool.setName("Google Docs");
        tool.setWebsite("http://google docs");
        tool.setDescription("You can write text together like you are sharing one computer with many keyboards.");
//        tool.setImage();
        entityManager.persist(tool);


        return "redirect:";
    }


}

