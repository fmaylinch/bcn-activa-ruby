
puts "--- arrays ---"

array = [6, 1, 4]
puts "Display array using puts:"
puts array
puts "Display array using p:"
# p array
puts "Display array interpolated: #{array}"
puts "First element: #{array[0]}"
puts "Last element: #{array[-1]}"
array << 3
array << 7
array[2] = 8
puts "Array after changes: #{array}"
puts "length: #{array.length}"
array.sort!()
puts "Array after sorting: #{array}"
puts "index of 6: #{array.index(6)}"
puts "index of 2: #{array.index(2).inspect}" # nil (nothing)
# p array.index(2)
part = array[1..3]
puts "Part of array: #{part}"

puts "--- maps ---"

map = {"Memento" => 10, "Prestige" => 8, "Tenet" => 6}
map["Inception"] = 9
puts map
puts "Memento has value: #{map["Memento"]}"
puts "length: #{map.length}"
puts "keys: #{map.keys}"
puts "values: #{map.values}"


puts "Symbols as keys, 2 syntax options:"

map2 = {:symbol1 => "value 1", symbol2: "value 2"}
puts map2
puts map2[:symbol1]
puts map2[:symbol2]


puts "--- Loops for collections ---"

puts "while loop:"
i = 0
while i < array.length
    puts array[i]
    i += 1
end

puts "for loop:"
for x in array
    puts x
end

puts "for loop with index:"
for x,i in array.each_with_index
    puts "#{x}, at index #{i}"
end

puts "for loop in map:"
for k, v in map
    puts "key: #{k}, value: #{v}"
end

puts "for loop in map.keys:"
for k in map.keys
    puts k
end

puts "for loop in map.values:"
for v in map.values
    puts v
end

puts "for loop with range:"
x = 3
y = 7
for i in x..y
    puts i
end

