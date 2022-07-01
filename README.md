### 1.Herokuに新しいアプリケーションを作成する
 ターミナルで%heroku create実行<br>
### 2. GemfileのRubyのバージョンをコメントアウトする
 コメントアウトしたらターミナルでbundle installを実行する
### 3.コミットする
git add .</br>
git commit -m “コメント”

### 4.Heroku buildpackを追加する

### 5.Herokuにデプロイをする
git push heroku step2:master</br>
</br>
</br>

# Task
|  Column    |  Type    |
| ---------- | -------- |
|  name      |  string  |
|  content   |  text    |
|  deadline  |  date    |
|  priority  |  string  |
|  status    |  string  |
<br>

# User
|  Column    |  Type    |
| ---------- | -------- |
|  name      |  string  |
|  email     |  text    |
|  password-digest  |  string |
<br>
