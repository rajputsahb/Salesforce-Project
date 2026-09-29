public class WeatherhandellerController {
    @AuraEnabled
    public static String getweatherData(String city){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('callout:WeatherAPINamecredential/current.json?q='+city);
        req.setMethod('GET');
        HttpResponse res=new HttpResponse();
        Http ht =new Http();
        res=ht.send(req);
        System.debug('-----weather data----'+res.getBody());
        return res.getBody();    
            
    }

}