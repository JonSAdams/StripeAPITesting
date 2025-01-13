import { LightningElement } from 'lwc';

export default class UserList extends LightningElement {
    numOFUsers = 4;
    user1 = {
        Name: 'Jonathan Adams',
        Title: 'Manager',
        Username: 'jonathanadams@inspirebrand.com',
        Phone: '(770) 533-2522',
        Department: 'Foundation'
    }
    user2 = {
        Name: 'Kristin Williams',
        Title: 'Accouting',
        Username: 'kristin@email.com',
        Phone: '(223) 223-2522',
        Department: 'Sales'
    }
    
    user3 = {
        Name: 'Stuart Dillard',
        Title: 'Director',
        Username: 'stuart@gmail.com',
        Phone: '(233) 124-1234',
        Department: 'Foundation'
    }
    user4 = {
        Name: 'Evan Knox',
        Title: 'CEO',
        Username: 'know@gmail.com',
        Phone: '(333) 222-3333',
        Department: 'Sales'
    }
}
