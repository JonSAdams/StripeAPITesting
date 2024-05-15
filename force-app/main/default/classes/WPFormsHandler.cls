@RestResource(urlMapping='/partnerprograminterest')
global with sharing class WPFormsHandler {
    
    //private static final String SECRET_KEY = '0>{rPMi[HDF#o%p&uUC-ixHL]g`n5O3XF_Z`uQ?0R3bo27IA0yz}~$hvwENH{>%e';
    //System.Debug(SECRET_KEY);

    @HttpPost
    global static void handlePost() {
        RestRequest req = RestContext.request;
        RestRequest request = RestContext.request;
        System.debug('MyService.newMessage body:\n ' + request.requestBody.toString());
        String requestBody = req.requestBody.toString();
        
        // Parse the JSON body
        Map<String, Object> parsedBody = (Map<String, Object>)JSON.deserializeUntyped(requestBody);
        
        // Access specific fields from the parsed body
        String name = (String)parsedBody.get('name');
        String companyName = (String)parsedBody.get('CompanyName');
        String email = (String)parsedBody.get('email');
        // Extract other fields as needed
        
        // Process the data (e.g., create a new Lead)
        Lead newLead = new Lead();
        newLead.FirstName = name;
        newLead.Email = email;
        // Set other fields
        
        insert newLead;
        
        System.debug('Lead created: ' + newLead);
    }
}