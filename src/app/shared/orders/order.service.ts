import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Order } from 'src/app/models/Order';

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

  order: Order

  constructor(public http: HttpClient) { }

  createOrder(order: Order) {
    return this.http.post('http://localhost:8080/order/add', order, httpOptions)
  }

  getAllOrdersByCustomer() {
    return this.http.get('http://localhost:8080/order/all', httpOptions)
  }
}
