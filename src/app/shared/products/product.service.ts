import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Product } from 'src/app/models/Product';

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

  updateProduct(product) {
    return this.http.put('http://localhost:8080/product/update', product, httpOptions)
  }

  searchProducts(keyword) {
    return this.http.get('http://localhost:8080/product/search/' + keyword)
  }
}
