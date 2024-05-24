@RestResource(urlMapping='/stripehandler')
global with sharing class stripeHandler {
    
    //private static final String SECRET_KEY = '0>{rPMi[HDF#o%p&uUC-ixHL]g`n5O3XF_Z`uQ?0R3bo27IA0yz}~$hvwENH{>%e';
    //System.Debug(SECRET_KEY);

    @HttpPost
    global static void handlePost() {
        RestRequest req = RestContext.request;
        RestRequest request = RestContext.request;
        System.debug('MyService.newMessage body:\n ' + request.requestBody.toString());
        String requestBody = req.requestBody.toString();
        
        // Parse the JSON body
        public static transformJSON
        parse(String json){
               return (transformJSON
           ) System.JSON.deserialize(json, transformJSON
           .class);
           }

        if(transfrormJSON)
       
    }
}
// stripe invoice created
// stripe invoice updated
// stripe invoice deleted 

public class transformJSON{
	public String id;	//evt_1PJQrCG2cXJyd3VGfaUHS2pJ
	public String object;	//event
	public String api_version;	//2024-04-10
	public Integer created;	//1716429253
	public cls_data data;
	public boolean livemode;
	public Integer pending_webhooks;	//3
	public cls_request request;
	public String type;	//invoice.created
	class cls_data {
	}
	class cls_object {
		public String id;	//in_1PJQrBG2cXJyd3VGUKKlSPUH
		public Integer amount_due;	//0
		public Integer amount_paid;	//0
		public String customer;	//cus_Q9kLf4CH3NyPMh
		public String customer_email;	//jonsadams@icloud.com
		public String customer_name;	//Jonathan Adams
	}




    /*
	static testMethod void testParse() {
		String json=		'{'+
		'  "id": "evt_1PJQrCG2cXJyd3VGfaUHS2pJ",'+
		'  "object": "event",'+
		'  "api_version": "2024-04-10",'+
		'  "created": 1716429253,'+
		'  "data": {'+
		'    "object": {'+
		'      "id": "in_1PJQrBG2cXJyd3VGUKKlSPUH",'+
		'      "object": "invoice",'+
		'      "account_country": "US",'+
		'      "account_name": "Get the Most Of, LLC.",'+
		'      "account_tax_ids": null,'+
		'      "amount_due": 0,'+
		'      "amount_paid": 0,'+
		'      "amount_remaining": 0,'+
		'      "amount_shipping": 0,'+
		'      "application": null,'+
		'      "application_fee_amount": null,'+
		'      "attempt_count": 0,'+
		'      "attempted": false,'+
		'      "auto_advance": false,'+
		'      "automatic_tax": {'+
		'        "enabled": false,'+
		'        "liability": null,'+
		'        "status": null'+
		'      },'+
		'      "billing_reason": "manual",'+
		'      "charge": null,'+
		'      "collection_method": "send_invoice",'+
		'      "created": 1716429253,'+
		'      "currency": "usd",'+
		'      "custom_fields": null,'+
		'      "customer": "cus_Q9kLf4CH3NyPMh",'+
		'      "customer_address": null,'+
		'      "customer_email": "jonsadams@icloud.com",'+
		'      "customer_name": "Jonathan Adams",'+
		'      "customer_phone": null,'+
		'      "customer_shipping": null,'+
		'      "customer_tax_exempt": "none",'+
		'      "customer_tax_ids": ['+
		'      ],'+
		'      "default_payment_method": null,'+
		'      "default_source": null,'+
		'      "default_tax_rates": ['+
		'      ],'+
		'      "description": null,'+
		'      "discount": null,'+
		'      "discounts": ['+
		'      ],'+
		'      "due_date": null,'+
		'      "effective_at": null,'+
		'      "ending_balance": null,'+
		'      "footer": null,'+
		'      "from_invoice": null,'+
		'      "hosted_invoice_url": null,'+
		'      "invoice_pdf": null,'+
		'      "issuer": {'+
		'        "type": "self"'+
		'      },'+
		'      "last_finalization_error": null,'+
		'      "latest_revision": null,'+
		'      "lines": {'+
		'        "object": "list",'+
		'        "data": ['+
		'        ],'+
		'        "has_more": false,'+
		'        "total_count": 0,'+
		'        "url": "/v1/invoices/in_1PJQrBG2cXJyd3VGUKKlSPUH/lines"'+
		'      },'+
		'      "livemode": false,'+
		'      "metadata": {'+
		'      },'+
		'      "next_payment_attempt": null,'+
		'      "number": null,'+
		'      "on_behalf_of": null,'+
		'      "paid": false,'+
		'      "paid_out_of_band": false,'+
		'      "payment_intent": null,'+
		'      "payment_settings": {'+
		'        "default_mandate": null,'+
		'        "payment_method_options": null,'+
		'        "payment_method_types": null'+
		'      },'+
		'      "period_end": 1716429253,'+
		'      "period_start": 1716429253,'+
		'      "post_payment_credit_notes_amount": 0,'+
		'      "pre_payment_credit_notes_amount": 0,'+
		'      "quote": null,'+
		'      "receipt_number": null,'+
		'      "rendering": {'+
		'        "amount_tax_display": null,'+
		'        "pdf": {'+
		'          "page_size": "auto"'+
		'        }'+
		'      },'+
		'      "shipping_cost": null,'+
		'      "shipping_details": null,'+
		'      "starting_balance": 0,'+
		'      "statement_descriptor": null,'+
		'      "status": "draft",'+
		'      "status_transitions": {'+
		'        "finalized_at": null,'+
		'        "marked_uncollectible_at": null,'+
		'        "paid_at": null,'+
		'        "voided_at": null'+
		'      },'+
		'      "subscription": null,'+
		'      "subscription_details": {'+
		'        "metadata": null'+
		'      },'+
		'      "subtotal": 0,'+
		'      "subtotal_excluding_tax": 0,'+
		'      "tax": null,'+
		'      "test_clock": null,'+
		'      "total": 0,'+
		'      "total_discount_amounts": ['+
		'      ],'+
		'      "total_excluding_tax": 0,'+
		'      "total_tax_amounts": ['+
		'      ],'+
		'      "transfer_data": null,'+
		'      "webhooks_delivered_at": null'+
		'    }'+
		'  },'+
		'  "livemode": false,'+
		'  "pending_webhooks": 3,'+
		'  "request": {'+
		'    "id": "req_52YzKJJ5un4oZq",'+
		'    "idempotency_key": "951dac5b-f4d9-41fc-963d-9277fc41d6a9"'+
		'  },'+
		'  "type": "invoice.created"'+
		'}';
		transformJSON
     obj = parse(json);
		System.assert(obj != null);
	}
} /*