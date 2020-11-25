import { Component, OnInit } from '@angular/core';
import { AuthService } from '../auth/auth.service';
import { User } from '../models/User';
import { NavbarService } from '../shared/navbar.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  user: User

  constructor(public navService: NavbarService, public authService: AuthService) { }

  ngOnInit(): void {
    this.user = this.authService.selectedUser
    console.log(this.user)
  }

}
