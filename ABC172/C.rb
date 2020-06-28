# 二台の机 A, B があります。机 A には N冊の本が、机 B には M冊の本が、それぞれ縦に積まれています。
# 机 A に現在上から i番目に積まれている本 (1≤i≤N)は読むのに Ai分を要し、机 B に現在上からi番目に積まれている本 (1≤i≤M)は読むのにBi分を要します。
# 次の行為を考えます。

# 本が残っている机を選び、その机の最も上に積まれた本を読んで机から取り除く。
# 合計所要時間がK分を超えないようにこの行為を繰り返すとき、最大で何冊の本を読むことができるでしょうか。本を読むこと以外に要する時間は無視します。

n, m ,tm = gets.chomp.split(' ').map(&:to_i)
ar1 = gets.strip.split.map(&:to_i)
ar2 = gets.strip.split.map(&:to_i)
cnt = 0

ar1.each do |ar1|

end



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