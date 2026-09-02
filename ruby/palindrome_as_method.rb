class String
	def palindrome?
		lowercase_string = self.downcase
	    only_characters = lowercase_string.gsub(/\W/, '')
	    reserverd_only_character = only_character.reverse

	    if only_character == reserverd_only_character
	        return true
	    else
	        return false
	    end
    end
end