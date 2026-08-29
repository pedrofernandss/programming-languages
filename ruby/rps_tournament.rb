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
		if (movimento1 == "R" and movimento2 == "S") or (movimento1 == "S" and movimento2 == "P") and (movimento1 == "P" and movimento2 == "R")
			return player 1
		else
			return player2
		end
	end
end

def rps_tournament_winner(tournament) 
	if tournament[0][0].is_a?(String)
		return rps_game_winner(torunament)
	end

	left_winner = rps_tournament_winner(tournament[0])
	right_winner = rps_tournament_winner(tournament[1])

	rps_game_winner([left_winner, right_winner])
end