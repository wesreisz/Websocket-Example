<!DOCTYPE html>
<html>
<head>
    <style>
        *{
            margin:10px;
        }
        .circle {
            border-radius: 50%;
            width: 200px;
            height: 200px;
            background-color: green;
            text-align: center;
            vertical-align: middle;
            line-height: 200px;
            color: white;
            /* width and height can be anything, as long as they're equal */
        }
    </style>
</head>
<body>

    <div id="serverStatus" class="circle">Server Status</div>
    <button onclick="chatWithServer()" style="padding: 10px;width:200px;">Chat with Server</button>
    <div>This is an example of a web socket connection between a javascript pages
    and a server. The javascript page sends a messages and the server echo's it when chat with server is clicked. When
    the javascript page see's the response, it writes the responses to the screen. Kill the server to see the state
    change on the page or set a timeout in the SocketServlet class</div>
    <div><strong>Server Status:</strong></div>
    <div id="divMessage" style="padding-left: 10px"></div>
    <script src="script/websocket.js"></script>
</body>
</html>