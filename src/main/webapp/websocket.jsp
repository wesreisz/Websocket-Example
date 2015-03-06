<!DOCTYPE html>
<html>
<head>
    <style>
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
    <div>This is an example of a web socket connection between a javascript pages
    and a server. The javascript page sends a messages and the server echo's it. When
    the javascript page see's it, it writes it to the screen. The server closes the
    websocket connection after 10secs of inactivity. The javascript is configured to
    send ten messages to the server before allowing the timeout to start running.</div>
    <div><strong>Server Status:</strong></div>
    <div id="divMessage" style="padding-left: 10px"></div>
    <script src="script/websocket.js"></script>
</body>
</html>