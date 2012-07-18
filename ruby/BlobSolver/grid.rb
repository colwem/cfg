
class Grid

  attr_accessor :grid
  def initialize var
    @grid = var.is_a?(Array) ? var :
      

      @grid = (1..var).map{ (1..var).map { |c|  }
    @grid.
  end

  def prints
    @grid.map { |l| l.map {|c| c[:val] ? 'x':'o'}.join(' ')}.join("\n")
  end

  def visit row, col
    @grid[row][col][:marked] = true
  end

  def visited row, col
    @grid[row][col][:marked]
  end
  
  def truth row, col
    @grid[row][col][:val]
  end

  def next_true_un_visited
    
  end
end

class Cell

  attr_accessor :up, :right, :down, :left
  def initialize truth = false, up = nil, right = nil, down = nil, left = nil
    @truth, @up, @right, @down, @left = truth, up, right, down, left
    @visited = false
  end

  def visit
    @visited = true
  end

  def visited
    @visited
  end
  
end

  
  
    
    

