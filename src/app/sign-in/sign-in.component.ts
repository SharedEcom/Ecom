import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { User } from '../models/User';
import { NavbarService } from '../shared/navbar.service';

@Component({
  selector: 'app-sign-in',
  templateUrl: './sign-in.component.html',
  styleUrls: ['./sign-in.component.css']
})
export class SignInComponent implements OnInit, OnDestroy {

  user: User
  successFlag: boolean
  errorFlag: boolean

  constructor(public authService: AuthService, public router: Router, public navService: NavbarService) {
    navService.hide()
    this.user = new User()
    this.errorFlag = false
  }

  ngOnInit(): void {
  }

  ngOnDestroy(): void {
    this.navService.show()
  }

  loginSubmit() {
    this.successFlag = false
    this.errorFlag = false

    this.authService.signin(this.user).subscribe((res: User) => {
      if (res === null || res === undefined || !res) {
        // LOGIN FAILED
        this.errorFlag = true
        setTimeout(() => {
          this.errorFlag = false
          this.router.navigateByUrl('/login')
        }, 3000)
      } else {
        // LOGIN SUCCESS
        this.successFlag = true
        setTimeout(() => {
          this.router.navigateByUrl('')
        }, 2000)
        this.authService.selectedUser = res
      }
    })
    this.user = new User()
  }
}