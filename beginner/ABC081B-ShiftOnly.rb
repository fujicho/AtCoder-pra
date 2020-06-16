n = gets.to_i
an = gets.strip.split.map(&:to_i)
cnt = 0
while an.all?(&:even?) do
  #all?は全ての条件がtrueという判定ができる
  cnt += 1
  #cnt.succ,cnt.nextも利用できる。
  an = an.map { |a| a / 2 }
end
puts cnt