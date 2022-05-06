package com.zohocrm.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zohocrm.entities.Billing;
import com.zohocrm.services.BillingService;

@Controller
public class BillingController {
	
	@Autowired
	private BillingService billingservice;
	
	@RequestMapping("/generate")
	public String genraeteBill(@ModelAttribute("bill") Billing bill,ModelMap model) {
		billingservice.GenerateOneBill(bill);
		model.addAttribute("bills",bill);
		return "belling_result";
		
	}

}
