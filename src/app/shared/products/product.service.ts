import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Product } from 'src/app/models/Product';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  selectedProduct: Product

  constructor(public http: HttpClient) { }

  getAllProducts() {
    return this.http.get('http://localhost:8080/product/all')
  }
}
