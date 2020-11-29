import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { Cart } from '../models/Cart';
import { Product } from '../models/Product';
import { ProductDetails } from '../models/Product-Details';
import { User } from '../models/User';
import { CartService } from '../shared/cart/cart.service';
import { ProductDetailsService } from '../shared/product-details/product-details.service';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.css']
})
export class ProductDetailsComponent implements OnInit {

  user: User
  product: Product
  productDetails: ProductDetails[]
  cart: Cart
  disableCart: boolean

  constructor(public prodService: ProductService, public authService: AuthService, public prodDetailService: ProductDetailsService, public cartService: CartService, public router: Router) { }

  ngOnInit(): void {
    this.cart = new Cart()
    // Get Product from Product Details
    if (this.prodService.selectedProduct) {
      this.product = this.prodService.selectedProduct
      if (this.product.inStockQty < 1) {
        this.disableCart = true
      } else {
        this.disableCart = false
      }
      this.prodDetailService.getProductById(this.product.productId).subscribe((res: ProductDetails[]) => {
        this.productDetails = res
      })
    }
  }

  setQty() { }

  // Increment Cart Qty
  incCartQty() {
    if (this.cart.cartQty < this.product.inStockQty) {
      this.cart.cartQty++
    }
  }

  // Decrement Cart Qty
  decCartQty() {
    if (this.cart.cartQty > 0) {
      this.cart.cartQty--
    }
  }

  // Add to Cart
  addToCart() {
    this.user = this.authService.selectedUser
    this.product = this.prodService.selectedProduct
    // Check if user logged in
    if (!this.user) {
      this.router.navigateByUrl('/login')
    } else {
      // Check if product is selected
      if (!this.product) {
        this.router.navigateByUrl('/')
      } else {
        this.cart.customerId = this.user.customerId
        this.cart.productId = this.product.productId
        this.cart.cartUid = this.product.productId + new Date().getDate() + (new Date().getMonth() + 1) + new Date().getFullYear()
        this.cart.cartTotal = this.cart.cartQty * (this.product.mrp - this.product.discount)
        this.cart.expShipDate = this.newDate(5)
        this.cart.expBillDate = this.newDate(9)
        this.cart.expDeliveryDate = this.newDate(8)
        this.cart.createdOn = this.newDate(0)
        // Add Items to Cart
        this.cartService.addToCart(this.cart).subscribe((res: Cart) => {
          this.cart = res
        })
      }
    }
  }

  // Convert Date to DB DateTime format
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
}