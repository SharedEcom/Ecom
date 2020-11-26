export class Cart {

    cartId: number
    customerId: number
    productId: number
    cartUid: number
    cartQty: number
    cartTotal: number
    expShipDate: string
    expBillDate: string
    expDeliveryDate: string
    createdOn: string

    constructor() {
        this.cartId = 0
        this.customerId = 0
        this.productId = 0
        this.cartUid = 0
        this.cartQty = 1
        this.cartTotal = 0
        this.expShipDate = ''
        this.expBillDate = ''
        this.expDeliveryDate = ''
        this.createdOn = ''
    }
}