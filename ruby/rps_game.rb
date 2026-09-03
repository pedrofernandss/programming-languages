class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2

	player1, player2 = game
	movimentos_validos = ["R", "P", "S"]

	unless movimentos_validos.include?(player1[1].upcase) and movimentos_validos.include?(player2[1].upcase)
		raise NoSuchStrategyError
	end

	movimento1 = player1[1].upcase
	movimento2 = player2[1].upcase

	if movimento1 == movimento2
		return player1
	else
		if (movimento1 == "R" and movimento2 == "S") or (movimento1 == "S" and movimento2 == "P") or (movimento1 == "P" and movimento2 == "R")
			return player1
		else
			return player2
		end
	end
end