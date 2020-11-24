export class User {
    customerId: number
    firstName: string
    lastName: string
    flatNumber: string
    customerBuilding: string
    customerAddress: string
    customerCity: string
    customerState: string
    postalCode: number
    customerCountry: string
    customerPhone: number
    customerEmail: string
    username: string
    password: string
    cardType: string
    cardNumber: number
    cardMonth: number
    cardYear: number
    shippingAddress: string
    shippingCity: string
    shippingState: string
    shippingCode: number
    shippingCountry: string

    constructor() {
        this.customerId = 0
        this.firstName = ''
        this.lastName = ''
        this.flatNumber = ''
        this.customerBuilding = ''
        this.customerAddress = ''
        this.customerCity = ''
        this.customerState = 'Choose...'
        this.postalCode
        this.customerCountry = 'India'
        this.customerPhone
        this.customerEmail = ''
        this.username = ''
        this.password = ''
        this.cardType = ''
        this.cardNumber
        this.cardMonth
        this.cardYear
        this.shippingAddress = ''
        this.shippingCity = ''
        this.shippingState = ''
        this.shippingCode
        this.shippingCountry = ''
    }
}