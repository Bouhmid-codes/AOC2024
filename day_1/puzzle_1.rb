input = File.read('input.txt').split("\n")

list1 = []
list2 = []

input.each do |line|
  line = line.split('   ')
  list1 << line[0].to_i
  list2 << line[1].to_i
end

list1.sort!
list2.sort!
total_distance = 0

list1.each_with_index do |element, index|
  total_distance += (list2[index] - element).abs
end

puts total_distance
