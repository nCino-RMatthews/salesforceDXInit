({
    shortenMe : function(component, event, helper) {

        component.get("v.url");

        var action = component.get('c.URLShortenMethod');

        action.setParams({
            "long_url" : component.get("v.url");
        });

        action.setCallback(this, function(response){
            

        });

        $A.enqueueAction(action);



    }
})
