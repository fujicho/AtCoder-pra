# 高橋君はデータの加工が行いたいです。
# a+b+cの計算結果と、文字列 sを並べて表示しなさい。
a = gets.to_i
b,c = gets.chomp.split(' ').map(&:to_i)
#.chompで改行文字を削除
#.splitで' 'を区切りにして配列化
#.map(&:to_i)で各要素に対してブロックを評価した結果を新しい配列にして返している
#.to_iは型変換
s = gets.chomp

puts "#{a+b+c} #{s}"