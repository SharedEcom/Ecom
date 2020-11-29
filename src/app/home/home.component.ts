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
    if (!this.prodService.products) {
      // Get All Products
      this.prodService.getAllProducts().subscribe((list: Product[]) => {
        list.sort((a, b) => (a.inStockQty < b.inStockQty) ? 1 : (a.inStockQty === b.inStockQty) ? ((a.productId > b.productId) ? 1 : -1) : -1)
        this.prodService.products = list
      })
    }

    // Get All Categories
    this.categoryService.getAllCategories().subscribe((list: Category[]) => {
      this.categories = list
    })
  }

  // Get Products By Product Id
  getProductById(id) {
    this.prodService.selectedProduct = this.prodService.products[id]
  }

  // Get Products By Category Id
  getProducts(category) {
    this.prodService.getProductsByCatId(category.categoryId).subscribe((res: Product[]) => {
      res.sort((a, b) => (a.inStockQty < b.inStockQty) ? 1 : (a.inStockQty === b.inStockQty) ? ((a.productId > b.productId) ? 1 : -1) : -1)
      this.prodService.products = res
    })
  }
}