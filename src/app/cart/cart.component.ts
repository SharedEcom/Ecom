import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { Order } from '../models/Order';
import { OrderDetails } from '../models/Order-Details';
import { Product } from '../models/Product';
import { CartService } from '../shared/cart/cart.service';
import { OrderDetailService } from '../shared/order-details/order-detail.service';
import { OrderService } from '../shared/orders/order.service';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  cartProducts: any[]
  deleteStatus: boolean
  cartTotal: number = 0
  shippingCharges: number = 0
  totalAmount: number = 0
  displayOrderDate: string
  orderDate: string
  orderNumber: number = 0
  order: Order
  orderDetail: OrderDetails
  newProduct: Product

  constructor(public authService: AuthService, public cartService: CartService, public prodService: ProductService, public orderService: OrderService, public orderDetailService: OrderDetailService, public router: Router) { }

  ngOnInit(): void {
    // refresh orders on start
    this.order = new Order()
    this.orderDetail = new OrderDetails()

    // check if user is logged in
    if (!this.authService.selectedUser) {
      this.router.navigateByUrl('/login')
    } else {
      this.cartService.getCartByUserId().subscribe((res: any[]) => {
        this.cartProducts = res
        this.cartService.cart = this.cartProducts
        this.calcValues(res)
      })
    }
  }

  // calculating values for modal
  calcValues(cartProducts) {
    for (let cartProduct of Object.keys(cartProducts)) {
      this.cartTotal = this.cartTotal + (cartProducts[cartProduct].cart.cartTotal)
    }
    this.shippingCharges = Math.round((this.cartTotal * 0.5) / 100)
    this.totalAmount = this.shippingCharges + this.cartTotal
    this.displayOrderDate = new Date().getDate() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getFullYear()
    this.orderDate = this.newDate(0)
    this.orderNumber = Math.floor(Math.random() * (9999999 - 1000000) + 1000000)
  }

  // generating dates for DB
  newDate(days) {
    var date = new Date();
    date.setDate(date.getDate() + days)
    var dateStr =
      date.getFullYear() + "-" +
      ("00" + (date.getMonth() + 1)).slice(-2) + "-" +
      ("00" + date.getDate()).slice(-2) + " " +
      ("00" + date.getHours()).slice(-2) + ":" +
      ("00" + date.getMinutes()).slice(-2) + ":" +
      ("00" + date.getSeconds()).slice(-2);
    return dateStr
  }

  // IDK what is this
  orderCart(cartProducts) {
    console.log(cartProducts)
    this.prodService.selectedProduct = cartProducts.product
    console.log(this.prodService.selectedProduct)
  }

  // Display product detail on product click
  showProduct(cartProduct) {
    this.prodService.selectedProduct = cartProduct.product
    this.router.navigateByUrl('/productdetails')
  }

  // remove item from cart UI
  removeCart(cartProduct) {
    this.deleteStatus = false
    this.cartService.deleteCart(cartProduct.cart.cartId).subscribe((res: any) => {
      if (res.queryStatus === true) {
        this.deleteStatus = true
        this.cartService.getCartByUserId().subscribe((res: any[]) => {
          this.cartProducts = res
        })
      } else {
        this.deleteStatus = false
      }
    })
  }

  // Placing Order
  placeOrder() {
    this.order.orderNumber = this.orderNumber
    this.order.orderDate = this.orderDate
    this.order.shipDate = this.newDate(5)
    this.order.deliveryDate = this.newDate(8)
    this.order.shipperId = Math.floor(Math.random() * (4 - 1) + 1)
    this.order.freight = this.shippingCharges
    this.order.paymentDate = this.newDate(0)
    this.order.invoiceAmount = this.totalAmount
    // Add item in orders table
    this.orderService.createOrder(this.order).subscribe((res: Order) => {
      this.order = res
      for (let cartProduct of Object.keys(this.cartProducts)) {
        this.orderDetail.orderId = this.order.orderId
        this.orderDetail.productId = this.cartProducts[cartProduct].product.productId
        this.orderDetail.price = this.cartProducts[cartProduct].product.mrp
        this.orderDetail.unitQty = this.cartProducts[cartProduct].cart.cartQty
        this.orderDetail.discount = this.cartProducts[cartProduct].product.discount
        this.orderDetail.total = this.cartProducts[cartProduct].cart.cartTotal
        this.orderDetail.shipDate = this.order.shipDate
        this.orderDetail.deliveryDate = this.order.deliveryDate
        this.orderDetail.billDate = this.newDate(9)
        // Create Order Details
        this.orderDetailService.createOrderDetails(this.orderDetail).subscribe((res: OrderDetails) => {
          this.orderDetail = res
        })
        this.newProduct = this.cartProducts[cartProduct].product
        this.newProduct.inStockQty = this.newProduct.inStockQty - this.orderDetail.unitQty
        // Update Product Qty
        this.updateProductQty(this.newProduct)
        // Delete Item From Cart
        this.deleteCart(this.cartProducts[cartProduct].cart.cartId)
        // Refresh Order Details
        this.orderDetail = new OrderDetails()
        this.cartService.getCartByUserId().subscribe((res: any[]) => {
          this.cartProducts = res
          this.cartService.cart = this.cartProducts
        })
      }
    })
  }

  // Update Product Qty
  updateProductQty(product) {
    this.prodService.updateProduct(product).subscribe((res: Product) => {
    })
  }

  // Clear Cart for User
  deleteCart(cartId) {
    this.cartService.deleteCart(cartId).subscribe((res: any) => {
    })
  }
}