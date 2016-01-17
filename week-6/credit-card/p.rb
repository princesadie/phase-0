number = 4563960122001999#1234567812345678

split = number.to_s.split("").map { |i| i.to_i  }
even = Array.new
odd = Array.new
even << split.values_at(0,2,4,6,8,10,12,14)
odd << split.values_at(1,3,5,7,9,11,13,15)

even.each do |i|
	i.map! { |x| x * 2 }
end
p even

even.each do |i|
	i.map! { |x| x.to_s }
end

all_numbers = even << odd
all_numbers.flatten!

all_numbers.map! { |i| i.to_i }
total_sum = 0
sum = all_numbers.join.split("").map { |i| i.to_i }.each do |i| total_sum += i end
p even
p odd

p all_numbers
p sum
p total_sum