import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Product } from 'src/app/models/Product';

// Http Request Header
const httpOptions = {
  headers: new HttpHeaders({
    'Authorization': 'someToken'
  }),
  withCredentials: true
};

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  // Current Selected Product
  selectedProduct: Product

  // Products Array
  products: Product[]

  constructor(public http: HttpClient) { }

  // Get all products
  getAllProducts() {
    return this.http.get('http://localhost:8080/product/all')
  }

  // Get product by Product Id
  getProductById(id) {
    return this.http.get('http://localhost:8080/product/' + id)
  }

  // Get products by Category Id
  getProductsByCatId(id) {
    return this.http.get('http://localhost:8080/product/category/' + id)
  }

  // Update Product
  updateProduct(product) {
    return this.http.put('http://localhost:8080/product/update', product, httpOptions)
  }

  // Search Products
  searchProducts(keyword) {
    return this.http.get('http://localhost:8080/product/search/' + keyword)
  }
}
