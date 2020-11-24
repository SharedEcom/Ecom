import { Component, OnInit } from '@angular/core';
import { Product } from '../models/Product';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  products: Product[]

  constructor(public prodService: ProductService) { }

  ngOnInit(): void {
    this.prodService.getAllProducts().subscribe((list: Product[]) => {
      console.log(list)
      this.products = list;
    })
  }

}
