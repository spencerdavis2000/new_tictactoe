#new tictactoe 
This is a new tic tac toe implementation in Ruby.  It is set up like a project with 
a .rvmc and new_tictactie Gemset.  
TDD will also be implemented as well as minimax.

#For The Minimax
The core idea is that:
======================
	TTT ===> passes only (board, player) ====> to the AI (minimax)
	TTT <===  (move)  passes back  <==========    AI (minimax)

1st we are going to start by looking at a board that looks like
================================================================
	O|O|X
	X|X|O
	O| |X
we look for the empty positions and then mark the empty position to get
================================================================
	O|O|X
	X|X|O
	O|X|X
2nd we are going to start looking at a board that looks like
=================================================================
	O|O|X
	X|X|O
	 | |X
starting with 'O' it will mark a move, then it needs to flip to 'X' and mark a move
===================================================================
'O' moves:
==========
	O|O|X
	X|X|O
	O| |X

'X' moves:
==========
	O|O|X
	X|X|O
	O|X|X

This takes care of the fliping back and forth, but that does not do any good if
we can't win, lose, draw.  So, we need to check for win lose draw also






