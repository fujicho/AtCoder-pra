n = gets.to_i

def num(n)
  b = []
  arr2 = []
  while (n > 0)
    b << n % 26
    n /= 26
  end
  b.each do |b|
    arr = ("a".."z").to_a
    arr2 << arr[b-1]
  end
  print arr2.reverse.join
end

num(n)