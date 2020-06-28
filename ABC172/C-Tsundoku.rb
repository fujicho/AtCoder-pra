# 二台の机 A, B があります。机 A には N冊の本が、机 B には M冊の本が、それぞれ縦に積まれています。
# 机 A に現在上から i番目に積まれている本 (1≤i≤N)は読むのに Ai分を要し、机 B に現在上からi番目に積まれている本 (1≤i≤M)は読むのにBi分を要します。
# 次の行為を考えます。

# 本が残っている机を選び、その机の最も上に積まれた本を読んで机から取り除く。
# 合計所要時間がK分を超えないようにこの行為を繰り返すとき、最大で何冊の本を読むことができるでしょうか。本を読むこと以外に要する時間は無視します。

n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

aa = [0]
bb = [0]
a.size.times{|i| aa << a[i] + aa.last }
b.size.times{|i| bb << b[i] + bb.last }

# これで第一要素を0とした累積和を作ることができる

i = 0
#累積和の数の分だけ試行する為の設定
j = b.size
#bの本の数
mx = 0
while i < aa.size && j >= 0
  # 累積和の数だけ試行したい、という条件と、j(bの本の数)だけ試行したい条件が合致した時のみ行う。
  # iは1→2→3と増え、jは3→2→1..冊の時と減る。
  if aa[i] + bb[j] <= k
    mx = i+j if mx < i+j
    # その時のmxよりも冊数が多い場合、mxに代入する。
    i += 1
    # 時間内の時は、aの累積和の値(Snのn)を上げる。
    # ちなみにaa[0]の時はaは0冊、aa[1]の時は1冊、というように
    # 累積和の値をなす要素の個数と一対一対応している。
    # ので累積和の第一要素を0とするとよい。のもある。
  else
    j -= 1
    # 時間に修まらない時は、bの冊数を下げる。
    # whileの条件式で、0の数まで実行する。
  end
end
# 基本的に
# aの累積和が[0]の時、bの冊数は3か2か1か
# a        [1]の時、bの冊数は3か2か
# a        [2]の時、bの冊数は3か2か
# とやっている。 
  p mx

# n, m ,tm = gets.chomp.split(' ').map(&:to_i)
# ar1 = gets.strip.split.map(&:to_i)
# ar2 = gets.strip.split.map(&:to_i)
# cnt = 0

#　誤答例
# 一瞬小さい方の本をグリーディーに選択していくのがベストなのかなと思ってしまったが、これは間違い。例えば、
# 10 10 20
# 10 1 1 1 1 1 1 1 1 1
# 5 5 5 5 5 5 5 5 5 5
# のような入力が来たとき、Aの先頭に大きな値があるので下の方ばかり選ばれて4つしか読めないのに対して、最初にがんばって10を読めばあとで軽い本が沢山読めるので、先頭だけ見て貪欲に選んではいけない。
# じゃあどうすればいいかって考えて、Aをどこまで読むのかを決めれば、あとはBを読めるだけ読むのがベストだろう。読む時間は正だと書いてあるので、読む数に対して単調増加である。こういう場合は、二分探索で高速に答えが求められる。



# def hikaku_calc(ar1, ar2, tm, cnt)
#   while tm > 0 do
#     if ar1[0].to_i > ar2[0].to_i
#       if tm > ar2[0]
#         tm - ar2[0]
#         ar2.shift
#         cnt += 1
#       else
#         puts cnt
#         exit
#       end
#     else
#       if tm > ar1[0].to_i
#         tm - ar1[0].to_i
#         ar1.shift
#         cnt += 1
#       else
#         puts cnt
#         exit
#       end
#     end
#   end
# end

# hikaku_calc(ar1, ar2, tm, cnt)
# while tm > 0 do
#   x = ar1[0]
#   y = ar2[0]
#   if x>=y then
#     if tm >= y then
#       tm - y
#       ar2.shift
#       cnt += 1
#     else
#       puts cnt
#       exit
#     end
#   else
#     if tm >= x then
#       tm - x
#       ar1.shift
#       cnt += 1
#     else
#       puts cnt
#       exit
#     end
#   end
# end