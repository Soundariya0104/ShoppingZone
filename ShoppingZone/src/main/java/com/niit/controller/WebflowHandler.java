package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.dao.OrderDAO;
import com.niit.model.Address;
import com.niit.model.Carddetail;


@Component
public class WebflowHandler {
	HttpSession session;
	@Autowired
	public OrderDAO orderDAO;
	
	public Address initFlow(){
		return new Address();
	}
	public Carddetail initFlow2(){
		return new Carddetail();
	}
	public Address validate(Address address){
		System.out.println(address.getBillingCity());
		return address;
	}

	public void initFlow4(){
		orderDAO.removeorderbycartid((String) session.getAttribute("User"));
	}
}
