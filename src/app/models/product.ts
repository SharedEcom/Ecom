export class Product {
    productId: number
    skuCode: number
    productBrand: string
    productName: string
    supplierId: number
    categoryId: number
    unitPrice: number
    discount: number
    isAvailable: boolean
    imageUrl: string
    isDiscountAvailable: boolean
    inStockQty: number
    mrp: number
    productDescription: string

    constructor() {
        this.productId = 0
        this.skuCode
        this.productBrand = ''
        this.productName = ''
        this.supplierId
        this.categoryId
        this.unitPrice
        this.discount
        this.isAvailable
        this.imageUrl = ''
        this.isDiscountAvailable
        this.inStockQty
        this.mrp
        this.productDescription = ''
    }
}