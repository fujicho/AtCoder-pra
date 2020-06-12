#シカのAtCoDeerくんは二つの正整数a,bを見つけました。aとbの積が偶数か奇数か判定してください。
a,b = gets.chomp.split(' ').map(&:to_i);
c = a*b
if c%2 == 0
  print "Even"
else
  print "Odd"
end

#例
a, b = gets.strip.split.map(&:to_i)
puts (a * b).odd? ? 'Odd' : 'Even'
#stripで文字列先頭と末尾の空白文字を全て取り除いた文字列を生成して返します。空白文字の定義は " \t\r\n\f\v" です。また、文字列右側からは "\0" も取り除きますが、左側の "\0" は取り除きません。
#strip!で破壊的メソッドも使用できる。
#rubyにはodd?メソッドがあるのでこれを利用して三項演算子で出力もできる。