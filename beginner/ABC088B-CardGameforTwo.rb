# N枚のカードがあります. i枚目のカードには, aiという数が書かれています.Alice と Bob は, これらのカードを使ってゲームを行います. 
# ゲームでは, Alice と Bob が交互に 1 枚ずつカードを取っていきます. Alice が先にカードを取ります.2 人がすべてのカードを取ったときゲームは終了し, 取ったカードの数の合計がその人の得点になります. 2 人とも自分の得点を最大化するように最適な戦略を取った時, Alice は Bob より何点多く取るか求めてください.
n = gets.to_i
array = Array.new(n)
array = gets.strip.split.map(&:to_i).sort.reverse

# array2 = array.sort.reverse
#最初はこうしたが、3行目のようにまとめた

alice = array.select.with_index{ |_, i| i.even?}.inject(&:+)
bob = array.select.with_index{ |_, i| i.odd?}.inject(&:+)
#with_indexを使い、indexの偶奇で選別している。
#https://docs.ruby-lang.org/ja/latest/method/Enumerator/i/with_index.html
puts alice - bob