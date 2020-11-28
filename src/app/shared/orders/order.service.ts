import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Order } from 'src/app/models/Order';

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
export class OrderService {

  constructor(public http: HttpClient) { }

  // Create a new Order
  createOrder(order: Order) {
    return this.http.post('http://localhost:8080/order/add', order, httpOptions)
  }

  // Get all orders for current user
  getAllOrdersByCustomer() {
    return this.http.get('http://localhost:8080/order/all', httpOptions)
  }
}
