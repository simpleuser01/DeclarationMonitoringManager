package com.company.DeclrMonManager.controller;


import com.company.DeclrMonManager.model.Claim;
import com.company.DeclrMonManager.model.Contract;
import com.company.DeclrMonManager.model.Proxy;
import com.company.DeclrMonManager.model.User;
import com.company.DeclrMonManager.service.DocumentsService;
import com.company.DeclrMonManager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @Autowired
    UserService userService;
    @Autowired
    DocumentsService<Claim> documentsService;
    @Autowired
    DocumentsService<Contract> contractService;
    @Autowired
    DocumentsService<Proxy> proxyService;


    @RequestMapping(value = "/users")
    public String getAllUsers(Model model){
        model.addAttribute("users", userService.getAllUsers());
        return "users";
    }

    @RequestMapping(value = "/users/add", method = RequestMethod.GET)
    public String addForm(){
        return "add";
    }

    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String addNewUser(@ModelAttribute User user){
        userService.addNewUser(user);
        return "redirect:/users/add/documents/" + user.getUserId();
    }

    @RequestMapping(value = "/users/add/documents/{id}")
    public String getInfo(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getById(id));
        return "documents";
    }


     @RequestMapping(value = "/users/add/documents/new", method = RequestMethod.POST)
    public String getClaim(@ModelAttribute Claim claim, @ModelAttribute Contract contract, @ModelAttribute Proxy proxy){
       documentsService.addNewDocument(claim);
       contractService.addNewDocument(contract);
       proxyService.addNewDocument(proxy);
        return "redirect:/users";
    }

   /* @RequestMapping(value = "/users/info/claim/{id}", method = RequestMethod.POST)
    public String addClaim(@PathVariable("id") int id, @ModelAttribute Claim claim){
        documentsService.addNewDocument(claim);
        return "info";
    }
*/
    /*@RequestMapping(value = "/users/info/claim/{id}", method = RequestMethod.GET)
    public String getClaim(@PathVariable("id") int id){
        User user = userService.getById(id);
        return "redirect:/users/info/claim/" + user.getUserId();
    }*/

   /* @RequestMapping(value = "/users/info/claim/{id}", method = RequestMethod.POST)
    public String addClaim(@PathVariable("id") int id, Model model, @ModelAttribute Claim claim){
        model.addAttribute("user", userService.getById(id));
       *//* documentsService.addNewDocument(claim);*//*
        return "info";
    }*/

   /* @RequestMapping(value = "/users/add/documents/{id}", method = RequestMethod.GET)
    public String getDocuments(@PathVariable("id") int id){
       *//* model.addAttribute("userInfo", userService.getById(id));*//*
        User user = userService.getById(id);
        *//*return "redirect:/users/add/documents/" + user.getUserId();*//*
        return "documents";

    }*/

   /* @RequestMapping(value = "/users/add/documents/claim/{id}", method = RequestMethod.GET)
    public String getClaim(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getById(id));
        return "claim";
    }

    @RequestMapping(value = "/users/add/documents/claim/{id}", method = RequestMethod.POST)
    public String addNewClaim(@ModelAttribute Claim claim, @PathVariable("id") int id){
        User user = userService.getById(id);
        documentsService.addNewDocument(claim);
        return "redirect:/user/add/documents/" + user.getUserId();
    }
*/
    /*@RequestMapping(value = "/users/add/documents/{id}", method = RequestMethod.POST)
    public String getClaim(@PathVariable("id") int id, Model model){
        User user = userService.getById(id);
        model.addAttribute("user", userService.getById(id));
        return "redirect:/users/add/documents/claim/" + user.getUserId();
       *//* return "redirect:/users/add/documents/claim/";*//*
    }*/
   /* @RequestMapping(value = "/users/add/documents/claim/{id}", method = RequestMethod.POST)
    public String addClaim(@ModelAttribute Claim claim, @PathVariable("id") int id){
        User user = userService.getById(id);
        documentsService.addNewDocument(claim);
        *//*return "redirect:/users/add/documents/" + user.getUserId();*//*
        return "redirect:/users/add/documents";
    }*/
}
