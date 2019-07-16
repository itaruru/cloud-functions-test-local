#!/usr/bin/env bash

curl -X POST \
  -H 'Content-Type:application/json; charset=utf-8' \
  -d '{
    "user_id": 12345
}' \
  http://localhost:8080
