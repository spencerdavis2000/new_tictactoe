#Spencer Davis
#Tic Tac Toe refactored and including minimax
require 'pry'
class Game
  attr_accessor :FIELD
  def initialize
    @DIM = 3
    @SIZE = 9
    @FIELD = [' ']*9
    @space = ' '
    @Xmove = 'X'
    @Omove = 'O'
    @game_over = false
    @win = false
    @draw = false
    @current_player = 1
    
    @groups = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  end
  def play_game
    while !@game_over
      if @current_player == 1
        input(@Omove)
        if check_status
          @game_over = true
        else
          @current_player += 1
        end
        print
      elsif @current_player == 2
        input(@Xmove)
        if check_status
          @game_over = true
        else
          @current_player -= 1
        end
        print
      end
    end
  end
  def input(current_player)
    made_move = false
    while !made_move
      begin
        puts "Player One: Please enter (1-9)"
        move = Integer(gets.chomp)
        move -= 1
        if move >= 0 && move <= 8
          if @FIELD[move] == @space
            @FIELD[move]=current_player
            made_move = true
          else
            puts "Field already filled.  Enter another field."
          end
        else
          puts "Range is an integer from 1-9"
        end
      rescue 
        puts "Invalid entry.  Integers only please"
      ensure
      end
    end
  end
  def check_draw
    counter = 0
    @groups.length.times do |i|
      if get_group(i)==4 or get_group(i)==5 or get_group(i)==8
        counter += 1
      end
    end
    if counter==8
      @draw = true
      puts "Tied, no winner"
    end
  end
  def check_win
    @groups.length.times do |i|
      if get_group(i)==6
        @win = true
        puts "Player 1 wins"
      elsif get_group(i)==3
        @win = true
        puts "Player 2 wins"
      end
    end
  end
  def check_status
    check_win
    check_draw
    if @win or @draw
      return true
    else
      return false
    end
  end
  def print
     puts @FIELD[0].to_s + "|" +@FIELD[1].to_s + "|"+@FIELD[2].to_s+"\n"+
            @FIELD[3].to_s+ "|" +@FIELD[4].to_s + "|" +@FIELD[5].to_s+"\n"+
            @FIELD[6].to_s+ "|" +@FIELD[7].to_s + "|" +@FIELD[8].to_s
  end
  def get_group(group_number)
       count(@groups[group_number][0], @groups[group_number][1], @groups[group_number][2])
  end
  def count(n1, n2, n3)
      c = Array.new(@DIM)
      c[0]=@FIELD[n1]
      c[1]=@FIELD[n2]
      c[2]=@FIELD[n3]
      total = 0
      @DIM.size.times do |i|
        if c[i]==@space
          total += 5
        elsif c[i]==@Omove
          total += 2
        elsif c[i]==@Xmove
        total += 1
        end
      end
      return total
  end 
end

binding.pry
