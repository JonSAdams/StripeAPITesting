@RestResource(urlMapping='/StripeHandler')
global with sharing class stripeHandler {
    
    @HttpPost
    global static void handlePost() {
        RestRequest req = RestContext.request;
        System.debug('MyService.newMessage body:\n ' + req.requestBody.toString());
        String requestBody = req.requestBody.toString();
        
        StripeEvent stripeEvent = (StripeEvent) JSON.deserialize(requestBody, StripeEvent.class);

        System.debug(stripeEvent.type);
    }
    
    global class StripeEvent {
        public String id;  // evt_1PJQrCG2cXJyd3VGfaUHS2pJ
        public String eventType;  // event
        public String apiVersion;  // 2024-04-10
        public Integer created;  // 1716429253
        public Data data;
        public boolean livemode;
        public Integer pendingWebhooks;  // 3
        public Request request;
        public String type;  // invoice.created
    }

    global class Data {
        public ClassObject eventObject;
    }
        
    global class ClassObject {
        public String id;  // in_1PJQrBG2cXJyd3VGUKKlSPUH
        public Integer amountDue;  // 0
        public Integer amountPaid;  // 0
        public String customer;  // cus_Q9kLf4CH3NyPMh
        public String customerEmail;  // jonsadams@icloud.com
        public String customerName;  // Jonathan Adams
    }

    global class Request {
        public String id;  // req_1E8fQkUqg1xwr3
        public String idempotencyKey;  // i5Sdn
    }
}
