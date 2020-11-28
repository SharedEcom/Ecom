import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { OrderDetailService } from '../shared/order-details/order-detail.service';
import { OrderService } from '../shared/orders/order.service';

@Component({
  selector: 'app-order-list',
  templateUrl: './order-list.component.html',
  styleUrls: ['./order-list.component.css']
})
export class OrderListComponent implements OnInit {

  orders: any[]
  currentOrder: any[]
  orderDetails: any[]
  orderDate: string

  constructor(public authService: AuthService, public orderService: OrderService, public orderDetailService: OrderDetailService, public router: Router) { }

  ngOnInit(): void {
    // check if user is logged in
    if (!this.authService.selectedUser) {
      this.router.navigateByUrl('/login')
    } else {
      this.orderService.getAllOrdersByCustomer().subscribe((res: any[]) => {
        this.orders = res
        this.orders.reverse()
        console.log('orders:', this.orders)

        for (let order of this.orders) {
          let date = (order.order.orderDate)
          let newDate = (date.split(' ')[0])
          order.order.orderDate = (newDate.split('-')[2] + '-' + newDate.split('-')[1] + '-' + newDate.split('-')[0])
        }

        for (let order of this.orders) {
          let date = (order.order.deliveryDate)
          let newDate = (date.split(' ')[0])
          order.order.deliveryDate = (newDate.split('-')[2] + '-' + newDate.split('-')[1] + '-' + newDate.split('-')[0])
        }
      });
    }
  }

  getOrderDetails(order) {
    this.currentOrder = order
    console.log('current order', this.currentOrder)
    this.orderDetailService.getOrderDetails(order.orderId).subscribe((res: any[]) => {
      this.orderDetails = res
      console.log(this.orderDetails)
    })
  }

}
