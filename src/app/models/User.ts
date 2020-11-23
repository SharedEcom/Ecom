export class User {
    id: number
    firstname: string
    lastname: string
    username: string
    password: string
    userContact: number
    userEmail: string
    userFlat: string
    userBuilding: string
    Locality: string
    userCity: string
    userPostalCode: number

    constructor() {
        this.id = 0
        this.firstname = ''
        this.lastname = ''
        this.username = ''
        this.password = ''
        this.userContact = 0
        this.userEmail = ''
        this.userFlat = ''
        this.userBuilding = ''
        this.Locality = ''
        this.userCity = ''
        this.userPostalCode = 0
    }
}