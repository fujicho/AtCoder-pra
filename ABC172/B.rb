# 文字列 S, Tが与えられます。次の操作を繰り返してSを T に変更するとき、操作回数の最小値を求めてください。
# 操作: Sの1文字を選んで別の文字に書き換える

s = gets.strip.split("")
t = gets.strip.split("")

n = 0
cnt = 0 

s.each do |s|
  unless s == t[n]
    cnt += 1
  end
  n += 1
end

# s文字列とt文字列を比較して異なる文字の個数を選ぶだけ
# eachごとにt[n]を増やしている

puts cnt
# 操作した回数