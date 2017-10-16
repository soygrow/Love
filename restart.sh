#/bin/bash

ps aux | grep "python -m SimpleHttpServer" | awk '{print $2}' | xargs kill -9

nohup python -m SimpleHTTPServer 520 > http.log 2>&1 &
