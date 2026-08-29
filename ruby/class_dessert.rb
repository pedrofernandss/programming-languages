class Dessert
	def initialize(name, calories)
		# Usamos @ para variáveis de instância - um atributo que vai ser específico para para uma instância 
		@name = name
		@calories = calories
	end

	# Métodos getters para acessarmos os valores das variáveis de instância
	def name
		@name
	end

	def calories
		@calories
	end

	# Métodos setters para caso queiramos alterar o valor das variáveis de instância
	def name=(new_name)
		@name = new_name
	end

	def calories=(new_calories)
		@calories = new_calories
	end

	def healthy?
		if @caolries < 200
			return true
		else
			return false
		end
	end

	def delicious?
		return true
	end

end