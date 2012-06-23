#@since 1.8.1
category Obsolete
#@end

環境変数をグローバル変数としてアクセスするためのライブラリです。
#@since 1.8.1
このライブラリは deprecated です。代替となるライブラリはありません。
#@end

このライブラリを require するだけで環境変数をグローバル変数としてアクセスすることができるようになります。

=== 使用例

  require 'importenv'
  p $USER              # => "matz" (自分のユーザ名)
  $USER = "matz-2.0"
  p ENV["USER"]        # => "matz-2.0"
  p $USER              # => "matz-2.0"

#@if (version <= "1.6.2")
=== 注意
Ruby 1.6.2 までは、大域変数の値を書き換えても変更されないというバグがありました(つまり、上記の例では二度目の $USER が "matz" のままでした)。このバグは 1.6.3 で修正されました。
#@end
