@RestResource(urlMapping='/Account/*')
global class SalesforceAccessFromIntegration {
    
    @HttpGet
    global static List<Account> getAccounts(){
        
        return [Select Id,Name from Account];
    }
  /*  @HttpPost
    global static String createAccount(String accountName){
        
        Account acc = new Account();
        acc.Name=accountName;
        
        insert acc;
        
        Map<String,Object> result = new Map<String,Object>();

        result.put('status','Success');
        result.put('accountId',acc.Id);

    return JSON.serialize(result);
        
        
    }*/
    
    @HttpPost
global static void createAccount() {

    RestRequest req = RestContext.request;

    String body = req.requestBody.toString();

    Map<String,Object> requestMap =(Map<String,Object>)JSON.deserializeUntyped(body);

    String accountName =(String)requestMap.get('accountName');

    Account acc = new Account(Name = accountName);
	
    insert acc;

    Map<String,Object> result = new Map<String,Object>();

    result.put('status','Success');
    result.put('accountId',acc.Id);

    RestResponse res = RestContext.response;

    res.statusCode = 200;

    res.addHeader('Content-Type','application/json');

    res.responseBody =
        Blob.valueOf(JSON.serialize(result));
}
}