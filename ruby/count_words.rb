def count_words(string)
	count = Hash.new(0)
	lowercase_string = string.downcase

    only_characters = lowercase_string.gsub(/\w+/)

    only_characters.each do |word|
    	count[word] += 1
    end

    return count

end

puts count_words("Olá mundo mundo ruby ruby ruby")
puts count_words("A casa da casa é a casa")
puts count_words("Teste teste TESTE Teste")
puts count_words("A man, a plan, a canal -- Panama")
puts count_words "Doo bee doo bee doo"
puts count_words "Scooby Dooby Doo, Where Are You?"