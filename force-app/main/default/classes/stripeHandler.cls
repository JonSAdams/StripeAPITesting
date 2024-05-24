@RestResource(urlMapping='/stripehandler')
global with sharing class stripeHandler {
    
    @HttpPost
    global static void handlePost() {
        RestRequest req = RestContext.request;
        RestRequest request = RestContext.request;
        System.debug('MyService.newMessage body:\n ' + request.requestBody.toString());
        String requestBody = req.requestBody.toString();
        
    
        StripeObject = stripeObject = (StripeObject) JSON.deserialize(requestBody, StripeObject.class);

        System.debug(stripeObject.type);
       
        public class StripeObject {
            public String id;	//evt_1PJQrCG2cXJyd3VGfaUHS2pJ
            public String object;	//event
            public String api_version;	//2024-04-10
            public Integer created;	//1716429253
            public cls_data data;
            public boolean livemode;
            public Integer pending_webhooks;	//3
            public cls_request request;
            public String type;	//invoice.created
            List<ClassObject> cls_data {
            }
            
        public class ClassObject {
                public String id;	//in_1PJQrBG2cXJyd3VGUKKlSPUH
                public Integer amount_due;	//0
                public Integer amount_paid;	//0
                public String customer;	//cus_Q9kLf4CH3NyPMh
                public String customer_email;	//jonsadams@icloud.com
                public String customer_name;	//Jonathan Adams
            }
        }   
        // stripe invoice created
        // stripe invoice updated
        // stripe invoice deleted 
    }
}



