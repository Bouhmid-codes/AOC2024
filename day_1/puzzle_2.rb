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

beatmap = {}
similarity_score = 0

list1.each do |element|
  beatmap[element] ||= list2.count(element)
  similarity_score += element * beatmap[element]
end

puts similarity_score
