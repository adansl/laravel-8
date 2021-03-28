#!/bin/bash

defaultcommand="up -d"
COMMAND=${1:-$defaultcommand}

if [ -f ".env.example" ] && [ ! -f ".env" ]; then
    cp .env.example .env
fi

docker-compose -f docker-compose.yml $COMMAND

