package com.zohocrm.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Billing;
import com.zohocrm.repositories.BillingRepository;
@Service
public class BillingServiceImpl implements BillingService {
	
	@Autowired
	private BillingRepository billingrepo;

	@Override
	public void GenerateOneBill(Billing bill) {
		billingrepo.save(bill);
		
		
	}

	
	
	

}
