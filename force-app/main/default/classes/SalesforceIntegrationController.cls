public class SalesforceIntegrationController {
    
    @future(callout=true)
    public static void getDetail(){
        HttpRequest req=New HttpRequest();
        req.setEndPoint('callout:SfNood2/services/apexrest/Account/');
        req.setHeader('content-type', 'application/json; charset=UTF-8');
        req.setHeader('Accept', 'application/json');
        req.setMethod('GET');
        Http http =new Http();
        HttpResponse response =http.send(req);
        
        System.debug('responce data:'+response.getStatusCode());
        System.debug('responce data:'+response.getBody());

        
    }
    /* @future(callout=true)
    public static void createAccount(){
        HttpRequest req=New HttpRequest();
        req.setEndPoint('callout:SfNood2/services/apexrest/Account/');
        req.setHeader('content-type', 'application/json; charset=UTF-8');
        req.setHeader('Accept', 'application/json');
        req.setBody('{"accountName":"ABCD000"}');
        req.setMethod('POST');
        
        Http http =new Http();
        HttpResponse response =http.send(req);
        
        System.debug('responce data:'+response.getStatusCode());
        System.debug('responce data:'+response.getBody());
        
}*/
     public class FlowInput {

        @InvocableVariable(required=true)
        public String accountName;

    }
    public class FlowOutput {

    @InvocableVariable
    public String accountId;

}

    @InvocableMethod(label='Create Account In Another Org')
    public static List<FlowOutput> createAccount(List<FlowInput> inputs){

      //  if(inputs.isEmpty()) return;

        String accountName = inputs[0].accountName;

        HttpRequest req = new HttpRequest();

        req.setEndpoint('callout:SfNood2/services/apexrest/Account/');
        req.setMethod('POST');

        req.setHeader('Content-Type','application/json');

        Map<String,Object> body = new Map<String,Object>();

        body.put('accountName',accountName);

        req.setBody(JSON.serialize(body));

        Http http = new Http();

        HttpResponse response = http.send(req);

        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        
        System.debug('Response Body = ' + response.getBody());
        
        Map<String,Object> responseMap = (Map<String,Object>)JSON.deserializeUntyped(response.getBody());

       String accountId =(String)responseMap.get('accountId');
        
        FlowOutput output = new FlowOutput();
   
        output.accountId = accountId;

        return new List<FlowOutput>{output};

    }

}