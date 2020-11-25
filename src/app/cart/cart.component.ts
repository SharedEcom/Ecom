import { Component, OnInit } from '@angular/core';
import { AuthService } from '../auth/auth.service';
import { Cart } from '../models/Cart';
import { Product } from '../models/Product';
import { User } from '../models/User';
import { CartService } from '../shared/cart/cart.service';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  user: User
  product: Product
  cart: Cart

  constructor(public cartService: CartService, public authService: AuthService, public prodService: ProductService) { }

  ngOnInit(): void {
    this.user = this.authService.selectedUser
    this.product = this.prodService.selectedProduct
    console.log(this.user)
    console.log(this.product)
  }

}
