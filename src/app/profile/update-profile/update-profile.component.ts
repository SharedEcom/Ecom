import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/auth/auth.service';
import { User } from 'src/app/models/User';

@Component({
  selector: 'app-update-profile',
  templateUrl: './update-profile.component.html',
  styleUrls: ['./update-profile.component.css']
})
export class UpdateProfileComponent implements OnInit {

  states: string[]
  user: User

  constructor(public authService: AuthService, public router: Router) { }

  ngOnInit(): void {
    if (this.authService.selectedUser) {
      this.user = this.authService.selectedUser
    } else {
      this.router.navigateByUrl('/login')
    }
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

  updateProfile() {
    this.authService.updateProfile(this.user).subscribe((res: User) => {
      this.authService.selectedUser = res
      this.router.navigateByUrl('')
    })
  }

}
