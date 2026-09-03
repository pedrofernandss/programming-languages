class Numeric
	@@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
	def method_missing(method_id)
		singular_currency = method_id.to_s.gsub( /s$/, '')

		if @@currencies.has_key?(singular_currency)
			Money.new(self, singular_currency, @@currencies)
		else
			super
		end

	end
end

class Money
	def initialize(value, currency, currencies)
		@value = value
		@currency = currency
		@currencies = currencies
	end

	def in(currency_to_convert)
		singular_currency = method_id.to_s.gsub( /s$/, '')
		value_in_dollars = @value * @currencies[@currency]
		value_in_dollars / @currencies[singular_currency]
	end
end