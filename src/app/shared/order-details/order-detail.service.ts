import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { OrderDetails } from 'src/app/models/Order-Details';

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
export class OrderDetailService {

  constructor(public http: HttpClient) { }

  // Create Order Detail Lines in Database While Placing Order
  createOrderDetails(orderDetail: OrderDetails) {
    return this.http.post('http://localhost:8080/orderDetails/add', orderDetail, httpOptions)
  }

  // Get Order Details while displaying orders
  getOrderDetails(orderId) {
    return this.http.get('http://localhost:8080/orderDetails/' + orderId, httpOptions)
  }
}
