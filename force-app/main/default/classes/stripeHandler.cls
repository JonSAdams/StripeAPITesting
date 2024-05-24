@RestResource(urlMapping='/stripehandler')
global with sharing class stripeHandler {
    
    @HttpPost
    global static void handlePost() {
        RestRequest req = RestContext.request;
        System.debug('MyService.newMessage body:\n ' + req.requestBody.toString());
        String requestBody = req.requestBody.toString();
        
        StripeObject stripeObject = (StripeObject) JSON.deserialize(requestBody, StripeObject.class);

        System.debug(stripeObject.type);
    }
    
    global class StripeObject {
        public String id;  // evt_1PJQrCG2cXJyd3VGfaUHS2pJ
        public String stripeObject;  // event
        public String api_version;  // 2024-04-10
        public Integer created;  // 1716429253
        public Data data;
        public boolean livemode;
        public Integer pending_webhooks;  // 3
        public Request request;
        public String type;  // invoice.created

        global class Data {
            public ClassObject object;
        }
        
        global class ClassObject {
            public String id;  // in_1PJQrBG2cXJyd3VGUKKlSPUH
            public Integer amount_due;  // 0
            public Integer amount_paid;  // 0
            public String customer;  // cus_Q9kLf4CH3NyPMh
            public String customer_email;  // jonsadams@icloud.com
            public String customer_name;  // Jonathan Adams
        }

        global class Request {
            public String id;  // req_1E8fQkUqg1xwr3
            public String idempotency_key;  // i5Sdn
        }
    }
}
