@isTest
private class stripeHandlerTest {

    @isTest
    static void testHandlePost() {
        String requestBody = '{"type": "invoice.created", "data": {"object": {"id": "inv_123", "amount_paid": 2500, "amount_due": 5000, "customer_name": "Test Customer", "customer_email": "test@example.com"}}}';
        RestRequest request = new RestRequest();
        request.requestURI = '/services/apexrest/stripehandler';
        request.httpMethod = 'POST';
        request.requestBody = Blob.valueOf(requestBody);
        RestContext.request = request;

        Test.startTest();
        stripeHandler.handlePost();
        Test.stopTest();

        List<Stripe_Invoice__c> invoices = [SELECT Id, Name, Amount_Paid__c, Amount_Due__c, Customer_Name__c, Customer_Email__c FROM Stripe_Invoice__c];
        System.assertEquals(1, invoices.size(), 'An invoice should have been created.');

        Stripe_Invoice__c invoice = invoices[0];
        System.assertEquals('Invoice: test@example.com', invoice.Name, 'Invoice name is incorrect.');
        System.assertEquals(25.00, invoice.Amount_Paid__c, 'Amount paid is incorrect.');
        System.assertEquals(50.00, invoice.Amount_Due__c, 'Amount due is incorrect.');
        System.assertEquals('Test Customer', invoice.Customer_Name__c, 'Customer name is incorrect.');
        System.assertEquals('test@example.com', invoice.Customer_Email__c, 'Customer email is incorrect.');
    }
}
