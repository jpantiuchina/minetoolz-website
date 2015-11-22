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
        Tool tool;

        tool = new Tool();
        tool.setUrlName("trello");
        tool.setTinyDescription("Free and flexible to organize projects!");
        tool.setName("Trello");
        tool.setWebsite("http://trello.com");
        tool.setFullDescriptionHtml("<p>Trello is a collaboration tool that organizes your project into boards." +
                        "Trello tells you what is worked on your project, who is working on what,  " +
                        "and where something is in a process. It supports chrome, Safari, Firefox and " +
                        "Internet Explorer browsers. It is available on IOS and Android mobile platforms."+
                "You will get all the information you need on the website. " +
                        "<p> Every group member can use it for free.");

        entityManager.persist(tool);


        tool = new Tool();
        tool.setTinyDescription("Design software, website, mobile app!");
        tool.setUrlName("balsamiq");
        tool.setName("Balsamiq");
        tool.setWebsite("http://balsamiq.com");
        tool.setFullDescriptionHtml("<p>Design great interface, software, websites, mobile apps, etc. " +
                "It is a wireframe tool that gives you the experience of sketching on the whiteboard,  " +
                "but using a computer." +
                "It guides for Mockups for desktop, Google Drive, User Experience design. " +
                "<p>You can use the free trial.");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setUrlName("zapier");
        tool.setTinyDescription("Connects the apps you use!");
        tool.setName("Zapier");
        tool.setWebsite("http://zapier.com");
        tool.setFullDescriptionHtml("<p>Can be used as a powerful glue to hold many different. " +
                "webapps and to create a functional whole.   " +
                "So, it connects the application the user is using. A simple example can be" +
                " like save the gmail attachments to dropbox. " +
                "<p>You can use it for free and it can run ecery 15 minutes and you have the possibility of 100 Tasks/month.");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setUrlName("twilio");
        tool.setTinyDescription("Cloud Communications");
        tool.setName("Twilio");
        tool.setWebsite("http://twilio.com");
        tool.setFullDescriptionHtml("<p>Twilio is a cloud communication platform where startups and more than " +
                "500 companies have succesed by using it." +
                "It is flexible, agile, adaptable, and economical. Power your business communication by enabling phones," +
                "VoIP, and messages to be embedded into web, desktops, and mobile software." +
                "Twilio take care about the telecom hardware and expose a globally available cloud API that developers can" +
                " interact with to build intelligent and complex communications systems."   +
                "It offers products like: voice, video, SMS, MMS, Network Traversal Service, short codes, platform, global conference." +
                "<p> You pay for what you use. If you are not a developer than Twilio explain how to explore and uses the tools it offers.");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setUrlName("skype");
        tool.setTinyDescription("Collaborate with Skype!");
        tool.setName("Skype");
        tool.setWebsite("http://skype.com");
        tool.setFullDescriptionHtml("<p>Improve your collaboration using Skype. " +
                "You can make vocal calls, videocalls Skype for free and communicate and share whatever you need for free. " +
                "Skype is a good tool in need of the businesses collaborations. ," +
                "VoIP, and messages to be embedded into web, desktops, and mobile software." +
                "Contact and communicate with millions of people and companies all over the world. " +
                " It can be used on Windows, Ios, Linux and it is available everywhere.");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setUrlName("adobe");
        tool.setTinyDescription("Web Designing tool!");
        tool.setName("Adobe Creative Cloud");
        tool.setWebsite("http://www.adobe.com/ca/creativecloud.html");
        tool.setFullDescriptionHtml("Adobe Creative is a creative cloud that gives you the best creative tools" +
                "on the world. It is always up to date, so it helps you to turn your work and brightest ideas" +
                "into your greatest work across your decktop and mobile devices." +
                "This creative cloud gives the collection of tools like Adobe Photoshop, Illustrator, InDesign and" +
                "Adobe Premier Pro. Also, are included some great mobile apps and you can create whatever you want" +
                " and wherever you are. "   +
                "All your creative work you can store it in another includes tool such as Adobe Stock." +
                "<p> You can use it free trial for 30 days.");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setUrlName("drupal");
        tool.setTinyDescription("Build digital experiences!");
                tool.setName("Drupal");
        tool.setWebsite("http://drupal.com");
        tool.setFullDescriptionHtml("<p> Build digital experiences. With Drupal, the marketers and website developers can " +
                        "create and manage great web, mobile and social experiences. They can improve and adapt quickly thanks to " +
                        "ongoing innovation and ideas from the Drupal community. Here you can build a new site and have a faster" +
                "experience without losing time."+ "Drupal’s flexible platform lets marketers and developers overcome bottlenecks" +
                        "and delays so they can run a fast and agile team and create amazing experiences." +
                        "Drupal will scale with your business and your brands for your next-generation digital transformation." +
                        "and allow you to evolve down the road without skipping a beat. ");
        entityManager.persist(tool);


        tool = new Tool();
        tool.setUrlName("sourcetree");
        tool.setTinyDescription("A free git and mercurial client!");
        tool.setName("SourceTree");
        tool.setWebsite("http://sourcetreeapp.com");
        tool.setFullDescriptionHtml("<p> By using SourceTree is not anymore the need to use command line. " +
                "You can use the full capability of Git and Mercurial in the SourceTree desktop app. " +
                "Through SourceTree’s simple interface you can manage all your repositories, hosted and local. " +
                "It is perfect for newcomers. Every one of the team will speed up with Git and Merccurial. " +
                "With just a click users can clone, commit, push, pull, merge, etc. " +
                "It is powerful for experts. You can review changesets, rebase,stash shelve, and much more.  " +
                "With just a click users can clone, commit, push, pull, merge, etc. " +
                "Git-flow and Hg flow can be used out of the box. Keep your repositories cleaner and your development." +
                "more efficient with SourceTree. ");
        entityManager.persist(tool);


        tool = new Tool();
        tool.setUrlName("bitbucket");
        tool.setTinyDescription("Code, Manage, Collaborate.");
        tool.setName("Bitbucket");
        tool.setWebsite("http://bitbucket.com");
        tool.setFullDescriptionHtml("<p> Bitbucket is the solution for professional teams. . " +
                "Using this tool is enjoying flexible deployment models of teams of all sizes and " +
                "needs. You can host it on the cloud of Bitbucket or manage it from your server. " +
                "Bitbucket Cloud is free for small teams of 5. Get unlimited private and public repositories.  " +
                "Secure your workflow. You can control the actions users can perform with branch permissions. " +
                "Bitbucket is integreated with other tools that help your team build better software like JIRA " +
                "integration, Atlasian Connect for Bitbucket, HipChat, Bamboo, etc. " );
        entityManager.persist(tool);

        //main page tools
        tool = new Tool();
        tool.setTinyDescription("no description");
        tool.setUrlName("xtensio");
        tool.setName("Xtensio");
        tool.setWebsite("http://xtensio.com");
        tool.setFullDescriptionHtml("<p> Xtensio was born out of the need for easy-to-use tools to " +
                "help entrepreneurs plan, strategize, and develop their startup. It is a toolbox that " +
                "is not only offering presentation tools but also interactive templates that will be" +
                " useful during research, brainstorming, planning and strategy phases of a company. " +
                "The first set of tools include User Persona Creator, One Pager Builder, Lean Canvas " +
                "Creator, Fundraising Summary, SWOT Analysis, and Blank Slate – live page building " +
                "features for monthly reports, html banners, sales pitches, etc.\n" +
                "All the tools are free. " );
        entityManager.persist(tool);

        tool = new Tool();
        tool.setTinyDescription("no description");
        tool.setUrlName("logogarden");
        tool.setName("Logogarden");
        tool.setWebsite("http://www.logogarden.com/");
        tool.setFullDescriptionHtml("LogoGarden is devoted to helping entrepreneurs grow a powerful brand"+
                "with our FREE logo maker.");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setTinyDescription("no description");
        tool.setUrlName("wevideo");
        tool.setName("wevideo");
        tool.setWebsite("https://www.wevideo.com");
        tool.setFullDescriptionHtml("A powerful, yet easy-to-use, cloud-based collaborative video " +
                "creation platform. Advanced when you need it. Basic when you don’t. Imagination, " +
                "not automation. You control the look of your video including transitions, fast/slow " +
                "motion, Green Screen, and more!");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setTinyDescription("no description");
        tool.setUrlName("wistia");
        tool.setName("Wistia");
        tool.setWebsite("https://www.wistia.com");
        tool.setFullDescriptionHtml("Wistia is a video hosting for business. They help businesses to upload their videos online and also to control the performance of how your video is interacting with users. It gives the feedback for each important section or breaking point you need to improve in order to increase the traffic of visitors.\n" +
                "Why Wistia and no other services like YouTube? Because this tool doesn’t offer only the service of helping customers adding their video online but it is try to help them on the marketing perspectives. It provides tools to customize videos and increase website traffic through Video SEO. \n" +
                "It offers a trial for 15 days to use it for free and if you feel satisfied there you can upgrade your account period. You don’t need a different email account for different websites. You can use the same account and embed videos from one account onto several different domains/websites. \n" +
                "The bandwidth is the data gets passed to a viewer when they watch a video. So, every time someone presses play on the video, data gets passed from Wistia’s server to their browsers, which is counted as a bandwidth. \n" +
                "You can integrate Wistia into your application by finding the info needed here: Wistia is a video hosting for business. They help businesses to upload their videos online and also to control the performance of how your video is interacting with users. It gives the feedback for each important section or breaking point you need to improve in order to increase the traffic of visitors.\n" +
                "Why Wistia and no other services like YouTube? Because this tool doesn’t offer only the service of helping customers adding their video online but it is try to help them on the marketing perspectives. It provides tools to customize videos and increase website traffic through Video SEO. \n" +
                "It offers a trial for 15 days to use it for free and if you feel satisfied there you can upgrade your account period. You don’t need a different email account for different websites. You can use the same account and embed videos from one account onto several different domains/websites. \n" +
                "The bandwidth is the data gets passed to a viewer when they watch a video. So, every time someone presses play on the video, data gets passed from Wistia’s server to their browsers, which is counted as a bandwidth. \n" +
                "You can integrate Wistia into your application by finding the info needed. \n");
        entityManager.persist(tool);


        tool = new Tool();
        tool.setTinyDescription("no description");
        tool.setUrlName("pitch");
        tool.setName("Pitch");
        tool.setWebsite("http://www.slideshare.net/adrianpica/pitch-preparation-startup-weekend");
        tool.setFullDescriptionHtml("Here we are recommending to you how you can prepare a\n" +
                "                                  good structured pitch by mentioning the most important points your\n" +
                "                                  pitch should contain without spending your time in a wrong way. The way\n" +
                "                                   how clear you are during the pitch and spending your time to the most\n" +
                "                                    important points would be appreciated also from the mentors and for\n" +
                "                                     the public to get a better understanding about your startup idea.\n" +
                "Here we are providing to you a link that learn and train you how\n" +
                "to do the best pitch and how to structure your 3-5 minute pitch.\n" +
                "You will find slides for pitch training preparation for your starup by Adrian Pica .\n" +
                "For a better understanding follow the link:");
        entityManager.persist(tool);



        //end of main page tools

        return "redirect:";
    }


}

