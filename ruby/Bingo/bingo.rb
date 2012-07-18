class Bingo
  def play_game
    drawing = Drawing.new
    board = Board.new
    while ! board.bingo
      board.mark(drawing.draw)      
    end
#    print board.print(:called)  
    drawing.drawn
  end

  def play_n_games n
    @drawings = []
    n.times do
      @drawings.push play_game
    end
  end

  def average
    @drawings.inject(:+) / Float(@drawings.size)
  end

  def group_min_ave n
    sample_min = []
    n.times do
      sample = []
      500.times do 
        sample.push @drawings.sample
      end
      sample_min.push sample.min
    end
    sample_min.inject(:+) / Float(sample_min.size)
  end
end

class Drawing
  attr_accessor :drawn
  def initialize
    @nums = (1..75).to_a
    @drawn = 0
  end

  def draw
    @drawn += 1
    @nums.delete(@nums.sample)
  end
end

class Board

  attr_accessor :board
  def initialize
    @board = []
    5.times do |i|
      @board[i] = []
      5.times do |j|
        @board[i][j] = ((i * 15 + 1)..((i+1) * 15)).to_a.sample
      end
    end 
  end

  def bingo
    @board.inject(false) { |m, r| m or r.inject(:+) == 0}  or
      (0..4).to_a.inject(false) { |m, i| m or @board.inject(0) { |m, r| m + r[i] } == 0} or
      (0..4).to_a.inject(0) { |m, i| m + @board[i][i] } == 0 or
      (0..4).to_a.inject(0) { |m, i| m + @board[i][4-i] } == 0
  end

  def mark num
    @board.each do |r|
      r.map! do |c|
        c == num ? 0 : c
      end
    end
  end

  def prints 
    @board.map { |l| l.join('|')}.join("\n") + "\n"
  end
end


b = Bingo.new
b.play_n_games( 3000 )
print "The avearage number of drawings before a card would get bingo: #{b.average}\n"
print "The average number of drawings before bingo in a 500 person group: #{b.group_min_ave 1000 }\n"

