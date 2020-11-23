import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../models/User';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(public http: HttpClient) { }

  signin(user) {
    this.http.post('http://localhost:8080/signin', user)
  }

  signup(user) {
    this.http.post('http://localhost:8080/signup', user)
  }

}