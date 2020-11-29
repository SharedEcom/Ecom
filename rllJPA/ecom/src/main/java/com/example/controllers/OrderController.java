package com.example.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.models.OrderContents;
import com.example.models.Orders;
import com.example.models.Payments;
import com.example.models.Shippers;
import com.example.repositories.OrdersRepository;
import com.example.repositories.PaymentsRepository;
import com.example.repositories.ShippersRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class OrderController {

	@Autowired
	private OrdersRepository ordersRepository;

	@Autowired
	private HttpSession httpSession;

	@Autowired
	private ShippersRepository shippersRepository;

	@Autowired
	private PaymentsRepository paymentsRepository;

	@PostMapping("/order/add")    //REST API to add contents into order table
	public Orders addToOrder(@RequestBody Orders order) {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				order.setCustomerId((Integer) httpSession.getAttribute("customerId"));
				Orders db = ordersRepository.save(order);
				return db;
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}

	}

//	@GetMapping("/order/all")
//	public List<Orders> viewAllOrdersContents() {
//		if (httpSession.getAttribute("customerId") == null) {
//			return null;
//		}  else {
//			List<Orders> orders = new ArrayList<Orders>();
//			Iterable<Orders> iterable = ordersRepository.findAll();
//
//			for (Orders order : iterable) {
//				orders.add(order);
//			}
//			return orders;
//		}
//	}
//	
//	
//	@GetMapping("/order/{customerId}")
//	public List<Orders> viewOrdersOfCustomer(@PathVariable Integer customerId) {
//		if (httpSession.getAttribute("customerId") == null) {
//			return null;
//		}  else {
//			List<Orders> orders = new ArrayList<Orders>();
//			Iterable<Orders> iterable = ordersRepository.findByCustomerId(customerId);
//			for (Orders order : iterable) {
//				orders.add(order);
//			}
//			return orders;
//		}
//	}

	@GetMapping("/order/all")     //RestAPI to show all the past orders of a particular customer (We will show only the orderID,invoice Amount,Payments etc)
	public List<OrderContents> getOrderByCustomer() {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				// NEW ARRAY
				List<OrderContents> orderContentsList = new ArrayList<>();
				Integer customerId = (Integer) httpSession.getAttribute("customerId");
				List<Orders> orders = ordersRepository.findByCustomerId(customerId);
				for (Orders order : orders) {
					Shippers shipper = shippersRepository.findById(order.getShipperId()).get();
					Payments payment = paymentsRepository.findById(order.getPaymentId()).get();
					orderContentsList.add(new OrderContents(order, shipper, payment));
				}
				return orderContentsList;
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}

	}
}
