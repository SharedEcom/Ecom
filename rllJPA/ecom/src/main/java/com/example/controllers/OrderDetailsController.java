package com.example.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.models.Category;
import com.example.models.OrderDetails;
import com.example.models.OrderDetailsDummy;
import com.example.models.Product;
import com.example.models.Suppliers;
import com.example.repositories.CategoryRepository;
import com.example.repositories.OrderDetailsRepository;
import com.example.repositories.ProductRepository;
import com.example.repositories.SuppliersRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class OrderDetailsController {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private HttpSession httpSession;

	@Autowired
	private OrderDetailsRepository orderDetailsRepository;

	@Autowired
	private SuppliersRepository suppliersRepository;

	public boolean validate() {
		return (httpSession.getAttribute("customerId") == null) ? false : true;
	}

	@PostMapping("/orderDetails/add")
	public OrderDetails addToOrderDetails(@RequestBody OrderDetails orderDetails) {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				OrderDetails db = orderDetailsRepository.save(orderDetails);
				return db;
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}

	}

	@GetMapping("/orderDetails/{orderId}")
	public List<OrderDetailsDummy> getCartByCustomer(@PathVariable Integer orderId) {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				// NEW ARRAY
				List<OrderDetailsDummy> orderDetailsDummyList = new ArrayList<>();
				// GETTING ALL order details for that orderId

				List<OrderDetails> orderDetails = orderDetailsRepository.findByOrderId(orderId);
				for (OrderDetails orderDetail : orderDetails) {
					Product product = productRepository.findById(orderDetail.getProductId()).get();
					Category category = categoryRepository.findByCategoryId(product.getCategoryId());
					Suppliers suppliers = suppliersRepository.findById(product.getSupplierId()).get();
					orderDetailsDummyList.add(new OrderDetailsDummy(orderDetail, product, category, suppliers));
				}

				return orderDetailsDummyList;

			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}
	}

}
