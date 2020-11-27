export class OrderDetails {
    orderDetailId: number
    orderId: number
    productId: number
    price: number
    igstRate: number
    igstAmount: number
    cgstRate: number
    cgstAmount: number
    sgstRate: number
    sgstAmount: number
    cessRate: number
    cessAmount: number
    unitQty: number
    discount: number
    total: number
    isFulfilled: number
    shipDate: string
    billDate: string
    deliveryDate: string

    constructor() {
        this.orderDetailId = 0
        this.orderId = 0
        this.productId = 0
        this.price = 0
        this.igstRate = 0
        this.igstAmount = 0
        this.cgstRate = 0
        this.cgstAmount = 0
        this.sgstRate = 0
        this.sgstAmount = 0
        this.cessRate = 0
        this.cessAmount = 0
        this.unitQty = 0
        this.discount = 0
        this.total = 0
        this.isFulfilled = 1
        this.shipDate = ''
        this.billDate = ''
        this.deliveryDate = ''
    }
}