#シカのAtCoDeerくんは二つの正整数a,bを見つけました。aとbの積が偶数か奇数か判定してください。
a,b = gets.chomp.split(' ').map(&:to_i);
c = a*b
if c%2 == 0
  print "Even"
else
  print "Odd"
end