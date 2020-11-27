export class Order {
    orderId: number
    customerId: number
    orderNumber: number
    paymentId: number
    orderDate: string
    shipDate: string
    deliveryDate: string
    shipperId: number
    freight: number
    transStatus: string
    isFulfilled: number
    isDeleted: number
    isPaid: number
    paymentDate: string
    invoiceAmount: number

    constructor() {
        this.orderId = 0
        this.customerId = 0
        this.orderNumber = 0
        this.paymentId = 1
        this.orderDate = ''
        this.shipDate = ''
        this.deliveryDate = ''
        this.shipperId = 0
        this.freight = 0
        this.transStatus = 'SUCCESS'
        this.isFulfilled = 1
        this.isDeleted = 0
        this.isPaid = 1
        this.paymentDate = ''
        this.invoiceAmount = 0
    }
}