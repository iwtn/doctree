category Network

サーバが稼働しているかどうか調べるための単純なメソッドを提供します。

= module Ping

サーバが稼働しているかどうか調べるための単純なメソッドを提供します。

== Module Functions

--- pingecho(host, timeout = 5, service = 'echo') -> bool

host の TCP サービス service に対して接続することで、
サーバが稼動しているかどうか確かめます。

このメソッドは [[man:ping(1)]] と異なり ICMP を使用しないので、
スーパーユーザ権限が必要ありません。
一方で、接続可能な TCP サービスがなければ
サーバの動作を確認できないという欠点があります。

=== 注意
接続を許可されていないサーバのサービスに対して
このメソッドを使うべきではありません。

@param host 対象ホストを指定します。

@param timeout タイムアウトする秒数を指定します。デフォルトは 5 秒です。

@param service サービスをサービス名またはポート番号で指定します。


@return 接続が成功した場合と、明示的に接続を拒否された場合には true を返します。
        サーバに接続できず、タイムアウトした場合には false を返します。

@see [[man:ping(1)]]
