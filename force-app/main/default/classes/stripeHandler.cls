@RestResource(urlMapping='/stripehandler')
global class stripeHandler {
    @HttpPost
    global static void handlePost() {
        RestRequest req = RestContext.request;
        System.debug('MyService.newMessage body:\n ' + req.requestBody.toString());
        String requestBody = req.requestBody.toString();
        
        Map<String, Object> payload = (Map<String, Object>) JSON.deserializeUntyped(requestBody);
        
        String eventType = (String) payload.get('type');
        System.debug('Invoice Type: ' + eventType);
        
        Map<String, Object> data = (Map<String, Object>) payload.get('data');
        Map<String, Object> invoiceObject = (Map<String, Object>) data.get('object');
        
        String invoiceId = (String) invoiceObject.get('id');
        Decimal amountPaid = ((Integer) invoiceObject.get('amount_paid')).decimalValue() / 100;
        Decimal amountDue = ((Integer) invoiceObject.get('amount_due')).decimalValue() / 100;
        String customerName = (String) invoiceObject.get('customer_name');
        String customerEmail = (String) invoiceObject.get('customer_email');
        
        System.debug('Invoice ID: ' + invoiceId);

        if (eventType == 'invoice.created' || eventType == 'invoice.updated') {


            List<Stripe_Invoice__c> existingInvoices = [SELECT Id, Stripe_ID__c FROM Stripe_Invoice__c WHERE Stripe_ID__c = :invoiceId LIMIT 1];
            Stripe_Invoice__c invoice;
            if (!existingInvoices.isEmpty()) {
                invoice = existingInvoices.get(0);
            } else {
                invoice = new Stripe_Invoice__c();
                invoice.Stripe_ID__c = invoiceId;
            }

            invoice.Name = 'Invoice'+ customerEmail;
            invoice.Amount_Paid__c = amountPaid;
            invoice.Amount_Due__c = amountDue;
            invoice.Customer_Name__c = customerName;
            invoice.Customer_Email__c = customerEmail;
            upsert invoice Stripe_ID__c;

        } else if (eventType == 'invoice.deleted') {
            Stripe_Invoice__c invoiceToDelete = [SELECT Id FROM Stripe_Invoice__c WHERE Stripe_ID__c = :invoiceId LIMIT 1];
            delete invoiceToDelete;
        }
    }
}
