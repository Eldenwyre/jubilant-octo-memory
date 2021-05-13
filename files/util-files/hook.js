Java.perform(function() {
    var mainAct = Java.use('com.example.anarfsign_up.MainActivity');

    var onClick = mainAct.onClick
    
    onClick.implementation = function(v){
        send('onClick');

        onClick.call(this,v);
        
        console.log(JSON.stringify(this.cnt));
    }
});