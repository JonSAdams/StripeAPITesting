import { LightningElement } from 'lwc';
import queryAllUsers from '@salesforce/apex/QueryAllUsers.getUsers';

export default class Allusersdisplay extends LightningElement {

    const columns = [
        { label: 'Name', fieldName: 'name' },
        { label: 'Website', fieldName: 'website', type: 'url' },
        { label: 'Phone', fieldName: 'phone', type: 'phone' },
        { label: 'Balance', fieldName: 'amount', type: 'currency' },
        { label: 'CloseAt', fieldName: 'closeAt', type: 'date' },
    ];

}