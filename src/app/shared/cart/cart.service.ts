import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Cart } from 'src/app/models/Cart';

// Http Request Header
const httpOptions = {
  headers: new HttpHeaders({
    'Authorization': 'someToken'
  }),
  withCredentials: true
};

@Injectable({
  providedIn: 'root'
})
export class CartService {

  // Current User Cart
  cart: any[]

  constructor(public http: HttpClient) { }

  // Add item to Cart
  addToCart(cart: Cart) {
    return this.http.post('http://localhost:8080/cart/add', cart, httpOptions)
  }

  // Get Cart For User Using the user id
  getCartByUserId() {
    return this.http.get('http://localhost:8080/cart/all', httpOptions)
  }

  // Delete item from cart
  deleteCart(cartId) {
    return this.http.delete('http://localhost:8080/deleteCart/' + cartId, httpOptions)
  }
}
