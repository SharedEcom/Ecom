import { Component, OnInit } from '@angular/core';
import { AuthService } from '../auth/auth.service';
import { Category } from '../models/Category';
import { User } from '../models/User';
import { CategoryService } from '../shared/categories/category.service';
import { NavbarService } from '../shared/navbar.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  categories: Category[]

  constructor(public navService: NavbarService, public authService: AuthService, public categoryService: CategoryService) { }

  ngOnInit(): void {
    this.categoryService.getAllCategories().subscribe((list: Category[]) => {
      this.categories = list
    })
  }

}
