import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ProductDetailsService {

  constructor(public http: HttpClient) { }

  // Get Product Details By Product Id
  getProductById(id) {
    return this.http.get('http://localhost:8080/productDetails/' + id)
  }
}
