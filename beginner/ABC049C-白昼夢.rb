# s = gets.strip

# words = "dream", "dreamer", "erase", "eraser"
# words.sort!.reverse!
# # dream + erase(r)だと前方からサーチするとプレフィックスになってしまう。
# # だがeraserからサーチした場合はdreamにかからない。ので、wordsの配列操作でこれを回避することができる。
# # つまり
# # words = "eraser", "erase", "dreamer", "dream"
# # としてもACが出てしまうw
# words.each do |word|
#   s.gsub!(word, "")
# end

# if s == ""
#   puts "YES"
# else
#   puts "NO"
# end

#本来は文字列を逆転してサーチするのが正攻法っぽいので別解
s = gets.strip.reverse!
puts s
words = "dream", "dreamer", "erase", "eraser"
words.each do |word|
  word.reverse!
  puts word
  s.gsub(word,"")
end
#一致して置換→emptyなら　yes
#一致して置換→再度eachを回してemptyならyes
#一致して置換→再度eachを回して一致せずに!emptyならnoとすればいける気も、、、


if s == ""
  puts "YES"
else
  puts "NO"
end