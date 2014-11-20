# 関数のテスト

# 関数名の前に @ をつけるとグローバルスコープ(this)に宣言される。
#  => 外部からこの関数を呼び出せる
@square = (x) -> x * x

# 宣言した関数は別関数で利用することも可能
@cube = (x) -> @square(x) * x

# 引数に初期値を与えた場合は省略可能
@fill = (container, liquid = "coffee") ->
  "Filling the #{container} with #{liquid}"
