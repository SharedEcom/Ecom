import { Component, OnInit } from '@angular/core';
import { AuthService } from '../auth/auth.service';
import { User } from '../models/User';
import { CartService } from '../shared/cart/cart.service';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  user: User

  constructor(public cartService: CartService, public authService: AuthService) { }

  ngOnInit(): void {
    this.user = this.authService.selectedUser
    console.log(this.user)
  }

}
