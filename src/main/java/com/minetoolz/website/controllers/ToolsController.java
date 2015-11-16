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
        tool.setTinyDescription("Logo, Video, Web Site");
        tool.setUrlName("xtensio");
        tool.setName("Xtensio");
        tool.setWebsite("http://xtensio.com");
        tool.setFullDescriptionHtml("<p>Xtensio was born out of the need for easy-to-use tools to " +
                "help entrepreneurs plan, strategize, and develop their startup. It is a toolbox that " +
                "is not only offering presentation tools but also interactive templates that will be " +
                "useful during research, brainstorming, planning and strategy phases of a company. " +
                "The first set of tools include User Persona Creator, One Pager Builder, Lean Canvas " +
                "Creator, Fundraising Summary, SWOT Analysis, and Blank Slate – live page building " +
                "features for monthly reports, html banners, sales pitches, etc." +
                "<p>All the tools are free.");



//        tool.setImage();
        entityManager.persist(tool);


        return "redirect:";
    }


}

