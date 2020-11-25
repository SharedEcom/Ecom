import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Cart } from 'src/app/models/Cart';

@Injectable({
  providedIn: 'root'
})
export class CartService {

  constructor(public http: HttpClient) { }

  addItem(cart: Cart) {
    return this.http.post('http://localhost:8080/cart/add', cart)
  }
}
