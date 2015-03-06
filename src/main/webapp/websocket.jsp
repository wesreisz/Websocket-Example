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
    <div>Server Status:</div>
    <div id="divMessage"></div>
    <script src="script/websocket.js"></script>
</body>
</html>