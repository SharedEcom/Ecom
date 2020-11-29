package com.example.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.models.Cart;
import com.example.models.CartProduct;
import com.example.models.Category;
import com.example.models.Product;
import com.example.models.Status;
import com.example.repositories.CartRepository;
import com.example.repositories.CategoryRepository;
import com.example.repositories.ProductRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class CartController {

	@Autowired
	private CartRepository cartRepository;

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private HttpSession httpSession;

	@PostMapping("/cart/add")//RESTAPI call to add the items in the cart(Cart will contain multiple cart lines)
	public Cart addToCart(@RequestBody Cart cart) {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				Cart db = cartRepository.save(cart);
				return db;
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}

	}

	/*
	 * @PutMapping("/cart/update") public Cart updateCart(@RequestBody Cart cart,
	 * HttpSession httpSession) { if (!(httpSession.getAttribute("customerId") ==
	 * null)) { return null; } else { try { Cart db = cartRepository.save(cart);
	 * return db; } catch (Exception e) { System.out.println(e.getMessage()); return
	 * null; } } }
	 */

	/*
	 * @GetMapping("/cart/all") public List<Cart> viewAllCartContents() { if
	 * (httpSession.getAttribute("customerId") == null) { return null; } else {
	 * List<Cart> carts = new ArrayList<Cart>(); Iterable<Cart> iterable =
	 * cartRepository.findAll();
	 * 
	 * for (Cart cart : iterable) { carts.add(cart); } return carts; } }
	 */

	@DeleteMapping("/deleteCart/{id}")//RestAPI call to delete contents of the cart once order is placed
	public Status deleteProduct(@PathVariable Integer id) {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				cartRepository.deleteById(id);
				return new Status(true);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return new Status(false);
			}
		}
	}

	@GetMapping("/cart/{id}")
	public Optional<Cart> getCart(@PathVariable Integer id) {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				return cartRepository.findById(id);

			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}
	}

	@GetMapping("/cart/all")//REST API call to find the contents of the cart (We also need to display product details an category,So we create a dummy class 
	                          // which holds cart,product and category and we return that to the front end
	public List<CartProduct> getCartByCustomer() {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				// NEW ARRAY
				List<CartProduct> cartProductsList = new ArrayList<>();
				// GETTING ALL CARTS FOR USER
				List<Cart> carts = cartRepository
						.findByCustomerId((Integer) httpSession.getAttribute("customerId"));

				// GETTING PRODUCT FROM CART
				for (Cart cart : carts) {
					Product product = productRepository.findById(cart.getProductId()).get();
					Category category = categoryRepository.findByCategoryId(product.getCategoryId());
					cartProductsList.add(new CartProduct(cart, product, category));
				}
				return cartProductsList;

			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}
	}

}