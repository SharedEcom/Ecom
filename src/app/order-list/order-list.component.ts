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
  order: any[]
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
        console.log(this.orders)

        for (let order of this.orders) {
          let date = (order.order.orderDate)
          let newDate = (date.split(' ')[0])
          this.orderDate = (newDate.split('-')[2] + '-' + newDate.split('-')[1] + '-' + newDate.split('-')[0])
        }
      });
    }
  }

  getOrderDetails(orderId) {
    this.order = this.orders[orderId]
    console.log(this.order)
    // this.orderDetailService.getOrderDetails(this.order.order.orderId).subscribe((res: any[]) => {
    //   this.orderDetails = res
    //   console.log(this.orderDetails)
    // })
  }

}
