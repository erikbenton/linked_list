require_relative "LinkedList.rb"

linked_list = LinkedList.new()

linked_list.append(1)

puts linked_list.to_s

linked_list.prepend(2)

puts linked_list.to_s

linked_list.append(3)

puts linked_list.to_s

linked_list.prepend(4)

puts linked_list.to_s

puts linked_list.pop

puts linked_list.to_s

puts (linked_list.head).val
puts (linked_list.tail).val

puts linked_list.to_s

puts linked_list.contains?(4)
puts linked_list.contains?(0)
puts linked_list.find(100)

linked_list.append(10)
linked_list.insert_at(4, 9)
puts linked_list.to_s
linked_list.remove_at(5)
puts linked_list.to_s
linked_list.remove_at(1)
puts linked_list.to_s
linked_list.remove_at(0)
puts linked_list.to_s
linked_list.remove_at(1)
puts linked_list.to_s