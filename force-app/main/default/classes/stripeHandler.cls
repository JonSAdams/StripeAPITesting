@RestResource(urlMapping='/stripehandler')
global with sharing class stripeHandler {
    @HttpPost
    global static void handlePost() {
        RestRequest req = RestContext.request;
        System.debug('MyService.newMessage body:\n ' + req.requestBody.toString());
        String requestBody = req.requestBody.toString();
        
        // Deserialize JSON into a Map
        Map<String, Object> payload = (Map<String, Object>) JSON.deserializeUntyped(requestBody);
        
        // Extract event type
        String eventType = (String) payload.get('type');
        System.debug('Invoice Type: ' + eventType);
        
        // Extract data object
        Map<String, Object> data = (Map<String, Object>) payload.get('data');
        Map<String, Object> invoiceObject = (Map<String, Object>) data.get('object');
        
        // Extract required fields
        String invoiceId = (String) invoiceObject.get('id');
        Integer amountPaid = (Integer) invoiceObject.get('amount_paid');
        Integer amountDue = (Integer) invoiceObject.get('amount_due');
        String customerName = (String) invoiceObject.get('customer_name');
        String customerEmail = (String) invoiceObject.get('customer_email');
        
        System.debug('Invoice ID: ' + invoiceId);

        if (eventType == 'invoice.created') {
            Stripe_Invoice__c newInvoice = new Stripe_Invoice__c();
            newInvoice.Name = 'First Invoice';
            newInvoice.Stripe_ID__c = invoiceId;
            newInvoice.Amount_Paid__c = amountPaid;
            newInvoice.Amount_Due__c = amountDue;
            newInvoice.Customer_Name__c = customerName;
            newInvoice.Customer_Email__c = customerEmail;
            insert newInvoice;
        }
    }
}
