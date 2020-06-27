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

puts cnt