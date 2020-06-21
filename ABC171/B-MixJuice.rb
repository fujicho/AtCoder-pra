n, k = gets.strip.split.map(&:to_i)
fruit_price = gets.strip.split.map(&:to_i)

puts fruit_price.sort.slice(0..k-1).sum