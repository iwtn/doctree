= class FloatDomainError < RangeError

正負の無限大や NaN(Not a Number) を [[c:Bignum]] に変換しようと
したり、NaN との比較を行ったときに発生します。
#@# NaN は、p 0.0/0 #=> NaN で得られます。[[c:Float]]参照
