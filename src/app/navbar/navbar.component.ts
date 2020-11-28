import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { Category } from '../models/Category';
import { Product } from '../models/Product';
import { User } from '../models/User';
import { CategoryService } from '../shared/categories/category.service';
import { NavbarService } from '../shared/navbar.service';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  categories: Category[]
  user: User
  searchText: string

  constructor(public navService: NavbarService, public authService: AuthService, public categoryService: CategoryService, public prodService: ProductService, public router: Router) {
    if (authService.selectedUser) {
      this.user = authService.selectedUser
    }
  }

  ngOnInit(): void {
    this.categoryService.getAllCategories().subscribe((list: Category[]) => {
      this.categories = list
    })
  }

  getAllProducts() {
    this.prodService.getAllProducts().subscribe((list: Product[]) => {
      this.prodService.products = list
    })
  }

  getProducts(category) {
    this.prodService.getProductsByCatId(category.categoryId).subscribe((res: Product[]) => {
      this.prodService.products = res
    })
  }

  searchProduct(searchText) {
    if (searchText.value) {
      this.prodService.searchProducts(searchText.value).subscribe((res: Product[]) => {
        this.prodService.products = res
      })
    } else {
      this.getAllProducts()
    }
  }

  logout() {
    this.authService.signout(this.user).subscribe((res: any) => {
      if (res.queryStatus) {
        this.authService.selectedUser = null
        this.router.navigateByUrl('')
      } else {
        this.authService.selectedUser = null
      }
    })
  }
}