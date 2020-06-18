n = gets.to_i
array = Array.new(n)
array = gets.strip.split.map(&:to_i).sort.reverse

# array2 = array.sort.reverse

# puts alice = array2.each_slice(2).map(&:first).inject(:+)
# puts bob = array2.each_slice(2).map(&:last).inject(:+)

alice = array.select.with_index{ |_, i| i.even?}.inject(&:+)
bob = array.select.with_index{ |_, i| i.odd?}.inject(&:+)


puts alice - bob