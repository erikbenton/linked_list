require_relative 'Node.rb'

class LinkedList

	def initialize
		@head = Node.new(nil, nil)
	end

	def append(val)
		if self.size == 1
			@head.val = val
		else
			new_node = Node.new(val)
			tail = self.tail(@head)
			tail.next = new_node
		end
	end

	def prepend(val)
		new_node = Node.new(val)
		new_node.next = @head
		@head = new_node
	end

	def size(current_node=@head)
		
		count = 1

		if(current_node.next != nil)
			return count + self.size(current_node.next)
		else
			return count
		end
	end

	def head
		return @head
	end

	def tail(current_node=@head)
		if(current_node.next != nil)
			self.tail(current_node.next)
		else
			return current_node
		end
	end

	def at(index)
		if index >= 0
			idx = 0
			size = self.size
			temp_node = Node.new()
			temp_node = @head
			while(idx < index)
				temp_node = temp_node.next
				idx += 1
				if idx== size
					return false
				end
			end
			return temp_node
		end
	end

	def pop(current_node=@head)
		while current_node.next != nil && current_node.next.next != nil
			current_node = current_node.next
		end
		val = current_node.next.val
		current_node.next = nil

		return val
	end

	def contains?(val, current_node=@head)

		if current_node.val == val
			return true
		end

		while current_node.next != nil
			current_node = current_node.next
			if current_node.val == val
				return true
			end
		end

		return false
		
	end

	def find(data, current_node=@head)
		idx = 0

		if current_node.val == data
			return idx
		end
		while current_node.next != nil
			current_node = current_node.next
			idx += 1
			if current_node.val == data
				return idx
			end
		end

		return -1
	end

	def to_s(current_node=@head)

		text = ""
		while current_node.next != nil
			text += current_node.val.to_s + " -> "
			current_node = current_node.next
		end
		text += current_node.val.to_s

		return text
	end

	def insert_at(index, val, current_node=@head)
		size = self.size
		
		if index > 0

			if index >= size
				puts "Too far, appending to list..."
				self.append(val)
				return
			end

			if index == 0
				self.prepend(val)
				return
			end

			idx = 0
			while idx < index-1
				current_node = current_node.next
				idx += 1
			end

			new_node = Node.new(val, current_node.next)
			current_node.next = new_node

		end
	end

	def remove_at(index)
		
	end


end