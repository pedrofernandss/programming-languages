def palindrome?(string)
	lowercase_string = string.downcase
    only_characters = lowercase_string.gsub(/\W/, '')
    reserverd_only_character = only_characters.reverse

    if only_characters == reserverd_only_character
        return true
    else
        return false
    end

end