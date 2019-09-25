#!/bin/sh

KEY=${KEY:="1234567890abcdef"}
PORT=${PORT:="7071"}

sed -e "s/your_key/$KEY/g" -e "s/7071/$PORT/g" app.config.example > app.config

exec erl -pa ./_build/default/lib/*/ebin +K true -config app -s make_proxy start_server

