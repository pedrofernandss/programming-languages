class JellyBean < Dessert
	def initialize(name, calories, flavor)
		@name = name
		@calories = calories
		@flavor = flavor
	end

	def flavor
		@flavor
	end

	def flavor=(new_flavor)
		@flavor = new_flavor
	end

	def delicious?
		if @flavor == "black licorice"
			return false
		else
			return true
		end
	end
end
