import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../models/User';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  selectedUser: User

  constructor(public http: HttpClient) { }

  signin(user: User) {
    return this.http.post('http://localhost:8080/signin', user)
  }

  signup(user: User) {
    return this.http.post('http://localhost:8080/signup', user)
  }

  checkUsername(username: string): any {
    return this.http.get('http://localhost:8080/validate/' + username)
  }

}