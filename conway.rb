class Conway
  def initialize
    @board = Array.new(3) { Array.new(3) { 0 } }
  end

  def board
    @board
  end

  def board=(new_board)
    @board = new_board
  end

  def dead?(row,col)
    @board[row][col] == 0
  end

  def alive?(row,col)
    @board[row][col] == 1
  end

  def live_neighbor_count(row,col)
    @board[row-1][col-1] +
    @board[row-1][col+0] +
    @board[row-1][col+1] +

    @board[row+0][col-1] +
    0                    +
    @board[row+0][col+1] +

    @board[row+1][col-1] +
    @board[row+1][col+0] +
    @board[row+1][col+1]
  end
end
