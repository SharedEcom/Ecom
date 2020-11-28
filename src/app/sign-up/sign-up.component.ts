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
  usernameMsg: string

  constructor(public navService: NavbarService, public authService: AuthService, public router: Router) {

    // Hide navbar
    navService.hide()

    this.user = new User()

    // Initialize all states
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
    // Display navbar when page closes
    this.navService.show()
  }

  // Function to validate username
  checkUsername() {
    this.usernameExists = false
    if (this.user.username === null || this.user.username === undefined || this.user.username === '') {
      
    } else {
      this.authService.checkUsername(this.user.username).subscribe(res => {
        if (res === null || res === undefined) {
          this.usernameExists = true
          this.usernameMsg = 'Error Checking Username. Please Try Again'
        } else {
          if (res.queryStatus) {
            this.usernameExists = true
            this.usernameMsg = 'Username already Exists. Choose another Username'
          } else {
            this.usernameMsg = ''
          }
        }
      })
    }
  }

  // Register User
  registerSubmit() {
    this.successFlag = false
    this.errorFlag = false
    // Setting shipping address as permanent address
    this.user.shippingAddress = this.user.flatNumber + this.user.customerBuilding + this.user.customerAddress
    this.user.shippingCity = this.user.customerCity
    this.user.shippingState = this.user.customerState
    this.user.shippingCode = this.user.postalCode
    this.user.shippingCountry = this.user.customerCountry

    // Register user
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