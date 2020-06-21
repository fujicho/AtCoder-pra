# dt = t(i+1)- t(i) 単位時間
# dist = abs(x(i+1)-x(i))+abs(y(i+1)-y(i)) 距離なので絶対値absで表している。条件を満たすのは1の時のみ
# dt　と　xi+yiの偶奇は一致する。また毎秒入れ替わる。
# この条件を満たしていれば行ったり戻ったりしながらたどりつくことができるはず。
n = gets.to_i
data = n.times.map { gets.strip.split.map(&:to_i) }
current = [0, 0, 0]

def is_reachable(current, next_data)
  tc, xc, yc = current
  tn, xn, yn = next_data
  dist = (xc - xn).abs + (yc - yn).abs
  
  return false if dist > tn - tc

  (dist - (tn - tc)).even?
end

data.each do |d|
  unless is_reachable(current, d)
    puts "No"
    exit 0
  end
  current = d
end

puts 'Yes'