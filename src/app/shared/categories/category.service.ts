import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  constructor(public http: HttpClient) { }
  getAllCategories() {
    return this.http.get('http://localhost:8080/category/all')
  }
}
