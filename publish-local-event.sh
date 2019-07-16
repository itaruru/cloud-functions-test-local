#!/usr/bin/env bash

# ce-type / ce-specversion / ce-source / ce-id は必須。
# これらが無いと動作しない。
# @see https://github.com/GoogleCloudPlatform/functions-framework-nodejs/blob/master/src/invoker.ts#L379,L386
# 上記 4 つは (data, context, callback) の context から参照できる。
curl -X POST \
  -H 'Content-Type:application/json; charset=utf-8' \
  -H 'ce-type: dummy' \
  -H 'ce-specversion: dummy' \
  -H 'ce-source: dummy' \
  -H 'ce-id: dummy' \
  -d '@publish-local-event.json' \
  http://localhost:8080
