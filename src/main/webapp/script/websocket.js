var ws = new WebSocket("ws://localhost:8080/websocket");
var divMessage = document.getElementById("divMessage");
var divServer = document.getElementById("serverStatus");

ws.onopen = function() {
    divMessage.innerHTML =  divMessage.innerHTML + "WebSocket opened."  + "<br />";
    var varCounter = 0;
    var varName = function(){
        if(varCounter < 10) {
            varCounter++;
            ws.send("Hello Server: " + varCounter);
        } else {
            clearInterval(varName);
        }
    };
    setInterval(varName, 2000);
};

ws.onmessage = function(evt) {
    divMessage.innerHTML =  divMessage.innerHTML + "Message from server: " + evt.data + "<br />";
};

ws.onclose = function() {
    divMessage.innerHTML =  divMessage.innerHTML + "WebSocket closed <br />";
    divServer.style.backgroundColor="red";
};

ws.onerror = function(err) {
    divMessage.innerHTML =  divMessage.innerHTML +"Error: " + err + "<br />";
    divServer.style.backgroundColor="red";
};

function doSend(){
    var msg = document.getElementById("txtMessage");
    ws.send(msg);
}