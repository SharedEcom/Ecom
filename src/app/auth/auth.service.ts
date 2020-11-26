import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../models/User';

const httpOptions = {
  headers: new HttpHeaders ({
    'Authorization': 'someToken'
  }),
  withCredentials: true
};

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  selectedUser: User

  constructor(public http: HttpClient) { }

  signin(user: User) {
    return this.http.post('http://localhost:8080/signin', user, httpOptions)
  }

  signup(user: User) {
    return this.http.post('http://localhost:8080/signup', user, httpOptions)
  }

  checkUsername(username: string): any {
    return this.http.get('http://localhost:8080/validate/' + username, httpOptions)
  }

}