import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../models/User';

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
export class AuthService {

  // Current User Object
  selectedUser: User

  constructor(public http: HttpClient) { }

  // Login User
  signin(user: User) {
    return this.http.post('http://localhost:8080/signin', user, httpOptions)
  }

  // Register User
  signup(user: User) {
    return this.http.post('http://localhost:8080/signup', user, httpOptions)
  }

  // Check username uniqueness
  checkUsername(username: string): any {
    return this.http.get('http://localhost:8080/validate/' + username, httpOptions)
  }

  // Logout User
  signout(user) {
    return this.http.post('http://localhost:8080/signout', user, httpOptions)
  }

  // Update User Profile
  updateProfile(user) {
    return this.http.put('http://localhost:8080/updateProfile', user, httpOptions)
  }

}