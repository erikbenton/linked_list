require_relative "LinkedList.rb"

linked_list = LinkedList.new()

linked_list.append(1)

linked_list.to_s

linked_list.prepend(2)

linked_list.to_s

linked_list.append(3)

linked_list.to_s

linked_list.prepend(4)

linked_list.to_s

puts linked_list.pop

linked_list.to_s

puts (linked_list.head).val
puts (linked_list.tail).val

linked_list.to_s