=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
class WrongNumberOfPlayersError < StandardError;end #make an error of the wrong number of players

class NoSuchStrategyError < StandardError;end #make an error for invalid strategies

def rps_game_winner(game)
	raise WrongNumberofPlayersError unless game.length == 2 #raise interupts the code and throws an error
	stratagies = ['R', 'P', 'S'] 
	p1 = game[0][1].upcase #upcase makes string charaters upper case
	p2 = game[1][1].upcase #upcase makes string charaters upper case
	if p1 == p2	#compare P1 & P2 if tied P1 wins
		setWinner(game[0][0])
	else
		str = "#{p1}" + "#{p2}" #combine P1&P2 to run a switch on the output
		case str	#a switch statment to determine the winner of RPS
		when 'RP'
			setWinner(game[1][0])
		when 'RS'
			setWinner(game[0][0])
		when 'PR'
			setWinner(game[0][0])
		when 'PS'
			setWinner(game[1][0])
		when 'SP'
			setWinner(game[0][0])
		when 'SR'
			setWinner(game[1][0])
		else
			raise NoSuchStrategyError #if the input was invalid the no startagy error will be thrown
		end
	end
end
	
def setWinner(winner)	#prints the winner of the game
	return "the winner is #{winner}"
end
		
def rps_tournament_winner(players)
	if (players[0][1].kind_of?(String)) #kind_of? function that checks to see is the element provided is a kind of the given input
		puts rps_game_winner(players)
	else
		game = [rps_tournament_winner(players[0]),rps_tournament_winner(players[1])] #uses recusion to run more games if there are more then two players remaining
	end
end

#rps_game_winner([['Ako', 'P'],['Bko', 'S']])

#rps_tournament_winner(
#[
#	[
#		[['Ako', 'P'],['Bko', 'S']],
#		[['Cko', 'R'],['Dko', 'S']]
#	],
#	[
#		[['Eko', 'P'],['Fko', 'S']],
#		[['Gko', 'R'],['Hko', 'S']]
#	]
#])
