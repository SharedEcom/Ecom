import { Component, OnInit } from '@angular/core';
import { Product } from '../models/Product';
import { ProductDetails } from '../models/Product-Details';
import { ProductDetailsService } from '../shared/product-details/product-details.service';
import { ProductService } from '../shared/products/product.service';

@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.css']
})
export class ProductDetailsComponent implements OnInit {

  product: Product
  productDetails: ProductDetails[]

  constructor(public prodService: ProductService, public prodDetailService: ProductDetailsService) { }

  ngOnInit(): void {
    this.product = this.prodService.selectedProduct
    this.prodDetailService.getProductById(this.product.productId).subscribe((res: ProductDetails[]) => {
      console.log(res)
      this.productDetails = res
    })
  }

  getProductDetailById(id) {
    console.log(id)
  }

}
