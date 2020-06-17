n, a, b = gets.strip.split.map(&:to_i)

def digit_sum n
  sum = 0
  while n > 0 do
    sum += n % 10
    n /=10
  end
  sum
end
# これは格桁の和を求める定石
# 834 を 10 で割った余りは 4　-> 答えに加算
# 834 を 10 で割って 83
# 83 を 10 で割った余りは 3 -> 答えに加算
# 83 を 10 で割って 8
# 8 を 10 で割った余りは 8 -> 答えに加算
# 8 を 10 で割って 0
# 0 なので break

ans = (1..n)
      .map { |i| [i, digit_sum(i)] }
      # ここで配列の中に配列を作成し、[元の数,その数の和]を作っている。
      .select { |d| a <= d[1] && d[1] <= b }
      その数の桁の和 d[1]を評価している。
      .inject(0) { |result, d| result + d[0] }
      #間違えがちだが第一引数は(0)を差す。
puts ans