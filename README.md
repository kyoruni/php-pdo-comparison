# kyoruni/php-pdo-comparison

PHP PDO の動作差分確認用

## 使い方
### （1） 立ち上げ
- 立ち上げるとテーブル、初期データが作られます

```
docker compose up -d
```

### （2） 動作確認
- 以下にアクセス
  - PHP8.1： `http://localhost:8081/`
  - PHP8.0： `http://localhost:8080/`

## メモ
### INT 型
- PHP8.1： `integer`
- PHP8.0： `string`

### DECIMAL 型
- PHP8.1： `string`
- PHP8.0： `string`

### FLOAT 型
- PHP8.1： `double`
- PHP8.0： `string`

### 日付型
- PHP8.1： `string`
- PHP8.0： `string`