# n = gets.to_i

# def num(n)
#   b = []
#   arr2 = []
  
#   while (n > 0)
#     b << n % 26
#     n /= 26
#   end
#   b.each do |b|
#     arr = ("a".."z").to_a
#     arr2 << arr[b-1]
#   end
#   print arr2.reverse.join
# end

# num(n)

n = gets.to_i
s = []
while n > 0
  n -= 1
  s.unshift ("a".."z").to_a[n%26]
  # ("a".."z")を配列とした時、インデックスがゼロからなので、n-=1としてずらしている。
  # 処理ごとでずらすことに注意
  n /= 26
end
puts s*''
# *はjoinと同じ