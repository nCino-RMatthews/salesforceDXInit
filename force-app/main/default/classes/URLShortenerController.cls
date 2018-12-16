public with sharing class URLShortenerController {

    private static string LOGIN = 'robertmatthewsstudy';
    private static string API_KEY = 'R_c5fa0fd83a164ea3b439f4e5c48de3da';




    @AuraEnabled
    public static string URLShortenMethod(string long_url){

    string apiURL = 'https://api-ssl.bitly.com/v3/shorten?apiKey='+API_KEY+'&login='+LOGIN+'&longURL='+long_url;

    String result = getCalloutResponseContents(apiURL);

    System.debug(result);

        return (result == null)?null:getCalloutResponseContents(apiURL);      
    }


private static string getCalloutResponseContents(string url){
    string result = null;

    Http h = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint(url);
    req.setMethod('GET');

    HttpResponse res = h.send(req);
    if(res.getStatusCode() == 200){
        result = res.getBody();
    }
    return result;

    }
}