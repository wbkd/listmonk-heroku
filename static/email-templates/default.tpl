<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <base target="_blank">

        <style>
            body {
                background-color: #222138;
                font-family: 'Helvetica Neue', 'Segoe UI', Helvetica, sans-serif;
                font-size: 15px;
                line-height: 26px;
                margin: 0;
                color: #ffffff;
            }


            .header {
                border-bottom: 1px solid #eeeeee;
                padding-bottom: 15px;
                margin-bottom: 15px;
            }

            .wrap {
                background-color: #1A192B;
                padding: 30px;
                max-width: 525px;
                margin: 0 auto;
                border-radius: 5px;
            }

            .button {
                background: #FF0072;
                border-radius: 3px;
                text-decoration: none !important;
                color: #ffffff !important;
                font-weight: bold;
                padding: 10px 30px;
                display: inline-block;
            }
            .button:hover {
                background: #111111;
            }

            .footer {
                text-align: center;
                font-size: 12px;
                color: #888888;
            }
                .footer a {
                    color: #888888;
                }

            .gutter {
                padding: 30px;
            }

            img {
                max-width: 100%;
            }

            a {
                color: #FF0072;
            }
                a:hover {
                    color: #ffffff;
                }
            @media screen and (max-width: 600px) {
                .wrap {
                    max-width: auto;
                }
                .gutter {
                    padding: 10px;
                }
            }
        </style>
    </head>
<body style="background-color: #222138;font-family: 'Helvetica Neue', 'Segoe UI', Helvetica, sans-serif;font-size: 15px;line-height: 26px;margin: 0;color: #fff;">
    <div class="gutter" style="padding: 30px;">&nbsp;</div>
    <div class="wrap" style="background-color: #1A192B;padding: 30px;max-width: 525px;margin: 0 auto;border-radius: 5px;">
        <div class="header">
            <img src="https://datablocks.pro/images/datablocks-logo.png" width="160" />
        </div>
        {{ template "content" . }}
    </div>
    
    <div class="footer" style="text-align: center;font-size: 12px;color: #9ca8b3;">
        <p>
            {{ L.T "email.unsubHelp" }}
            <a href="{{ UnsubscribeURL }}" style="color: #9ca8b3;">{{ L.T "email.unsub" }}</a>
        </p>
        <p><a href="https://datablocks.pro" target="_blank" style="color: #9ca8b3;">datablocks</a> is a project by <a href="https://webkid.io" target="_blank" style="color: #9ca8b3;">webkid.io</a></p>
    </div>
    <div class="gutter" style="padding: 30px;">&nbsp;{{ TrackView }}</div>
</body>
</html>
