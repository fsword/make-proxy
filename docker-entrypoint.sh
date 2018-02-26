#!/bin/sh

if [ "$KEY" != "" ]
then
  sed -e "s/1234567890abcdef/$KEY/g" app.config.example > app.config
fi

exec erl -pa ./_build/default/lib/*/ebin +K true -config app -s make_proxy start_server

