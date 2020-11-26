import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Product } from 'src/app/models/Product';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  selectedProduct: Product
  products: Product[]

  constructor(public http: HttpClient) { }

  getAllProducts() {
    return this.http.get('http://localhost:8080/product/all')
  }

  getProductById(id) {
    return this.http.get('http://localhost:8080/product/' + id)
  }

  getProductsByCatId(id) {
    return this.http.get('http://localhost:8080/product/category/' + id)
  }
}
