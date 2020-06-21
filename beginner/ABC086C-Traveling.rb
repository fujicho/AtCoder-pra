# dt = t(i+1)- t(i) 単位時間
# dist = abs(x(i+1)-x(i))+abs(y(i+1)-y(i)) 距離なので絶対値absで表している。条件を満たすのは1の時のみ
# dt　と　xi+yiの偶奇は一致する。また毎秒入れ替わる。
# この条件を満たしていれば行ったり戻ったりしながらたどりつくことができるはず。
n = gets.to_i
data = n.times.map { gets.strip.split.map(&:to_i) }
current = [0, 0, 0]
#初期位置は0,0,0

def is_reachable(current, next_data)
  tc, xc, yc = current
  # 現在時刻、現在地を代入します。
  tn, xn, yn = next_data
  # dataの要素を代入している。
  dist = (xc - xn).abs + (yc - yn).abs
  
  return false if dist > tn - tc
  # 到達したい距離>到達時間-現在の時刻ならば到達できないのでfalseを返している。
  # 最短距離で間に合わない
  (dist - (tn - tc)).even?
  
end

data.each do |d|
  # data一つ一つをeach文で検証していく。
  unless is_reachable(current, d)
    # falseならputs "No"
    puts 'No'
    exit 0
    #一つでもNGだったらNoを返して終了する。
  end
  current = d
  # data[n]はdata[n-1]が終わってから,その地点から向かうのでcurrent = dを行う。
end

puts 'Yes'
# 無事全て通過できたら'Yes'を出力。