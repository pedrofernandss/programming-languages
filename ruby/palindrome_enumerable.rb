module Enumerable
	def palindrome?
		to_a == to_a.reverse
	end
end