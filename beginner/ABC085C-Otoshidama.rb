n, y = gets.strip.split.map(&:to_i)
_i, _j, _k = -1, -1, -1

(0..n).each do |i|
  (0..n-i).each do |j|
  #10000円札の枚数がiの時、jの最大数はたかだかn-iになる。
    if i * 10000 + j * 5000 + ( n - i - j ) * 1000 == y
      #1000円札の枚数はiとjが決まれば、n-i-jで一意に定まる。
      _i, _j, _k = i, j, n - i - j
      #ifがtrueの時のみ、その値を代入しなおして、putsすればよい。
      #すべてのパターンを出力しなくてもよいので、これだけで十分。なのがミソ。
    end
  end
end

puts "#{_i} #{_j} #{_k}"