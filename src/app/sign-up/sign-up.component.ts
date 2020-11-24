import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { User } from '../models/User';
import { NavbarService } from '../shared/navbar.service';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css']
})
export class SignUpComponent implements OnInit, OnDestroy {

  states: string[]
  user: User
  successFlag: boolean
  errorFlag: boolean
  usernameExists: boolean

  constructor(public navService: NavbarService, public authService: AuthService, public router: Router) {

    navService.hide()

    this.user = new User()

    this.states = ["Andaman and Nicobar Islands",
      "Andra Pradesh",
      "Arunachal Pradesh",
      "Assam",
      "Bihar",
      "Chandigarh",
      "Chhattisgarh",
      "Dadar and Nagar Haveli",
      "Daman and Diu",
      "Delhi",
      "Goa",
      "Gujarat",
      "Haryana",
      "Himachal Pradesh",
      "Jammu and Kashmir",
      "Jharkhand",
      "Karnataka",
      "Kerala",
      "Lakshadeep",
      "Madya Pradesh",
      "Maharashtra",
      "Manipur",
      "Meghalaya",
      "Mizoram",
      "Nagaland",
      "Orissa",
      "Pondicherry",
      "Punjab",
      "Rajasthan",
      "Sikkim",
      "Tamil Nadu",
      "Telagana",
      "Tripura",
      "Uttar Pradesh",
      "Uttaranchal",
      "West Bengal"
    ]
  }

  ngOnInit(): void {
  }

  ngOnDestroy(): void {
    this.navService.show()
  }

  checkUsername() {
    console.log(this.user.username)
  }

  registerSubmit() {
    this.successFlag = false
    this.errorFlag = false

    this.authService.signup(this.user).subscribe(res => {
      if (res === null || res === undefined) {
        // REGISTER FAILED
        this.errorFlag = true
        setTimeout(() => {
          this.errorFlag = false
          this.router.navigateByUrl('/register')
        }, 3000)
      } else {
        // REGISTER SUCCESS
        this.successFlag = true
        console.log('SUCCESS FLAG::' + this.successFlag)
        setTimeout(() => {
          this.router.navigateByUrl('/login')
        }, 2000)
      }
    })
  }
}