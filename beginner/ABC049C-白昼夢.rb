s = gets.strip

words = "dream", "dreamer", "erase", "eraser"
words.sort!.reverse!
# dream + erase(r)だと前方からサーチするとプレフィックスになってしまう。
# だがeraserからサーチした場合はdreamにかからない。ので、wordsの配列操作でこれを回避することができる。
# つまり
# words = "eraser", "erase", "dreamer", "dream"
# としてもACが出てしまうw
words.each do |word|
  s.gsub!(word, "")
end

if s == ""
  puts "YES"
else
  puts "NO"
end