import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

// Http Request Header
@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  constructor(public http: HttpClient) { }

  // Get all Categories
  getAllCategories() {
    return this.http.get('http://localhost:8080/category/all')
  }
}
