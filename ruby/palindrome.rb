def palindrome?(string)
	lowercase_string = string.downcase

    only_characters = lowercase_string.gsub(/\w, '')
    

    reserverd_only_character = only_character.reverse

    if only_character == reserverd_only_character
        return true
    else
        return false
    end

end