s1, s2, s3 = gets.chomp.split('').map(&:to_i)
puts "#{s1 + s2+ s3}"
#split('')とすれば一文字置きで区切れる
nums = gets.strip.split('').map(&:to_i)
puts nums.inject(:+)
#配列に入れて、中身をinjectで計算している
#nums.sumでもOK