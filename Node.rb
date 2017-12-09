class Node
	attr_accessor :next, :val

	def initialize(val=nil, next_node=nil)
		@val = val
		@next = next_node
	end


end