package com.kardumen.common.controller;



import java.security.Principal;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.kardumen.customer.dao.CustomerDAO;
import com.kardumen.customer.model.Customer;



@Controller
public class ControllerCrud {
    
	@RequestMapping("/addCustomerPage")
    public String logTasPage() {
		System.out.println(">>>>>>>");
        return "index";
    }
    
    @RequestMapping(value="/add", method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request, ModelMap model) {

		String id = request.getParameter("id");
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		String nombrecompleto = request.getParameter("nombrecompleto");
		String nivel = request.getParameter("nivel");
		Customer customer=new Customer(Long.valueOf(id),nombre,password,nombrecompleto,nivel);
		
		
		ApplicationContext context =new ClassPathXmlApplicationContext("Spring-Module.xml");
    	CustomerDAO customerDAO = (CustomerDAO) context.getBean("customerDAO");
    	customerDAO.insert(customer);
		
		return new ModelAndView("redirect:lista.html");
        
	}
		
    
    @RequestMapping(value="/delete", method = RequestMethod.GET)
 	public ModelAndView delete(HttpServletRequest request, ModelMap model) {

     	String id = request.getParameter("id");
 		Customer customer=new Customer(Long.valueOf(id),null,null,null,null);
 		
 		
 		ApplicationContext context =new ClassPathXmlApplicationContext("Spring-Module.xml");
     	CustomerDAO customerDAO = (CustomerDAO) context.getBean("customerDAO");
     	customerDAO.deleteCustomer(customer);
 		
 		return new ModelAndView("redirect:lista.html");
         
         
 	}
     
   
    @RequestMapping(value="/update", method = RequestMethod.GET)
	public String getUpdateCustomerPage(HttpServletRequest request, ModelMap model) {
		
		System.out.println("Update....>>>>>>>"+request.getParameter("id"));
		ApplicationContext context =new ClassPathXmlApplicationContext("Spring-Module.xml");
    	CustomerDAO customerDAO = (CustomerDAO) context.getBean("customerDAO");
    	
    	String id=request.getParameter("id");
    	Customer e=customerDAO.findByCustomerId(Integer.valueOf(id));
		
    	model.addAttribute("customer",  e);
		return "actualizar";
	}
    
    
    @RequestMapping(value="/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request, ModelMap model) {

    	String id = request.getParameter("id");
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		String nombrecompleto = request.getParameter("nombrecompleto");
		String nivel = request.getParameter("nivel");
		Customer customer=new Customer(Long.valueOf(id),nombre,password,nombrecompleto,nivel);
		
		
		ApplicationContext context =new ClassPathXmlApplicationContext("Spring-Module.xml");
    	CustomerDAO customerDAO = (CustomerDAO) context.getBean("customerDAO");
    	customerDAO.updateCustomer(customer);
		
		return new ModelAndView("redirect:lista.html");
        
        
	}
    
    
    
    @RequestMapping("/lista")
    public String listarRegistros(Principal prinicpal, Model model) {
		System.out.println(">>>>>>>");
		ApplicationContext context =new ClassPathXmlApplicationContext("Spring-Module.xml");
    	CustomerDAO customerDAO = (CustomerDAO) context.getBean("customerDAO");
    	model.addAttribute("customer", customerDAO.findAll());
        
    	return "listado";
    }
    
    
    
    
    
}
