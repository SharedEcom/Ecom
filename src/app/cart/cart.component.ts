import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { CartService } from '../shared/cart/cart.service';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  cartProducts: any[]
  deleteStatus: boolean

  constructor(public authService: AuthService, public cartService: CartService, public prodService: ProductService, public router: Router) { }

  ngOnInit(): void {
    if (!this.authService.selectedUser) {
      this.router.navigateByUrl('/login')
    } else {
      this.cartService.getCartByUserId().subscribe((res: any[]) => {
        this.cartProducts = res
        this.cartService.cart = this.cartProducts
      })
    }
  }

  orderCart(cartProducts) {
    console.log(cartProducts)
    this.prodService.selectedProduct = cartProducts.product
    console.log(this.prodService.selectedProduct)
  }

  showProduct(cartProduct) {
    this.prodService.selectedProduct = cartProduct.product
    this.router.navigateByUrl('/productdetails')
  }

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
}