import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Cart } from 'src/app/models/Cart';

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

  cart: any[]

  constructor(public http: HttpClient) { }

  addToCart(cart: Cart) {
    return this.http.post('http://localhost:8080/cart/add', cart, httpOptions)
  }

  getCartByUserId() {
    return this.http.get('http://localhost:8080/cart/all', httpOptions)
  }

  deleteCart(cartId) {
    return this.http.delete('http://localhost:8080/deleteCart/' + cartId, httpOptions)
  }
}
