n, k = gets.strip.split.map(&:to_i)
fruit_price = gets.strip.split.map(&:to_i)

puts fruit_price.sort.slice(0..k-1).sum
# 配列を数字順で並べて、k個分切り取り、足している。