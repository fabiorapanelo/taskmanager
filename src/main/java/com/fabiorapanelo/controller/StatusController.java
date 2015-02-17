package com.fabiorapanelo.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fabiorapanelo.model.Status;

@Controller
@RequestMapping("/status")
public class StatusController {
	
	@RequestMapping(value="/new", method = RequestMethod.GET)
	public String formGET(Model model) {
		model.addAttribute(new Status());
		return "status/new";
	}
	   
	@RequestMapping(value="/new", method = RequestMethod.POST)
	public String formPOST(@Valid Status status, BindingResult bindingResult) {
		
		if(bindingResult.hasErrors())
			return "status/new";
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa-test");
		EntityManager em = emf.createEntityManager();
		EntityTransaction tx = em.getTransaction();

		tx.begin();
		em.persist(status);
		tx.commit();
		em.close();
		emf.close();
		
		return "redirect:/status/";
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String list(Model model){
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa-test");
		EntityManager em = emf.createEntityManager();

		Query q = em.createQuery("SELECT p FROM Status p");

		@SuppressWarnings("unchecked")
		List<Status> statusList = q.getResultList();
		System.out.println(statusList.size());
		em.close();
		emf.close();
		
		model.addAttribute("statusList", statusList);
		return "status/list";
	}
}
