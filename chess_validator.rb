require './chess_board'



this_board = ChessBoard.new()
this_board.create_pieces
this_board.create_board("simple_board.txt")

this_board.display_board
# this_board.list_pieces

input = ""
# while input.downcase != 'q' do
  puts "Please put enter your requested move. ex 'a2 a3':"
  # input = gets.chomp
  input = "a2 a3"
  split_input = input.split(" ")
  this_board.is_move_valid?(split_input[0], split_input[1]) if input.downcase != 'q'
# end