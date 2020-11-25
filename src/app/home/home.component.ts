import { Component, OnInit } from '@angular/core';
import { Category } from '../models/Category';
import { Product } from '../models/Product';
import { CategoryService } from '../shared/categories/category.service';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  categories: Category[]

  constructor(public prodService: ProductService, public categoryService: CategoryService) { }

  ngOnInit(): void {
    this.prodService.getAllProducts().subscribe((list: Product[]) => {
      this.prodService.products = list
    })

    this.categoryService.getAllCategories().subscribe((list:Category[])=>{
      this.categories=list
    })
  }

  getProductById(id) {
    this.prodService.selectedProduct = this.prodService.products[id]
  }

  getProducts(category) {
    this.prodService.getProductsByCatId(category.categoryId).subscribe((res: Product[]) => {
      console.log(res)
      this.prodService.products = res
    })
  }
}