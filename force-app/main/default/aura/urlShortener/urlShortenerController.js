({
    shortenMe : function(component, event, helper) {

        component.get("v.url");

        var action = component.get('c.URLShortenMethod');

        action.setParams({
            "long_url" : component.get("v.url")
        });

        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var result = response.getReturnValue();
                console.log(result);

            }else if(state === "INCOMPLETE"){

            }else if (state === "ERROR"){

            }

        });

        $A.enqueueAction(action);



    }
})
