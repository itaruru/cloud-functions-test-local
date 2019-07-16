# Cloud Functions ローカル環境

Cloud Functions をローカル環境で動作させるための方法を記載。

## 環境

```bash
$ node -v
v10.16.0

$ npm -v
6.9.0
```

## 設定

functions-framework インストール。

```bash
$ npm install --save-dev @google-cloud/functions-framework
```

functions-framework を起動。

HTTP 関数の場合は `--signature-type=http` もしくは `--signature-type` を付与しない。

```
$ npx @google-cloud/functions-framework --target=http
```

バックグラウンド関数の場合は、 `--signature-type=event` にする。

```
$ npx @google-cloud/functions-framework --target=background --signature-type=event
```

## 関数定義

関数の定義は https://cloud.google.com/functions/docs/writing/ と同様だが、バックグラウンド関数のインターフェイスのみ異なる。

HTTP 関数。

```js
exports.http = (req, res) => {};
```

バックグラウンド 関数。

```js
exports.background = (data, context, callback) => {};
```

## イベント送信方法

以下のスクリプトを参照。

- HTTP関数： publish-local-http.sh
- バックグラウンド関数：publish-local-event.sh
