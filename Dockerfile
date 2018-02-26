FROM erlang:alpine

COPY . /app
WORKDIR /app
RUN apk add -U git && ./rebar3 tree && ./rebar3 compile

ENTRYPOINT ["/app/docker-entrypoint.sh"]

