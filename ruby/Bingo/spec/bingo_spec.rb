require 'spec_helper.rb'


describe Board do

  describe "#new" do
    it "has numbers 1-15 in first row" do
      board = Board.new
      board.board[0].all? { |r| (1..15) === r }.should be_true
    end
    
    it "has numbers 16-30 in first row" do
      board = Board.new
      board.board[1].all? { |r| (16..30) === r }.should be_true
    end

    it "has numbers 31-45 in first row" do
      board = Board.new
      board.board[2].all? { |r| (31..45) === r }.should be_true
    end

    it "has numbers 0-15 in first row" do
      board = Board.new
      board.board[3].all? { |r| (46..60) === r }.should be_true
    end

    it "has numbers 61-75 in first row" do
      board = Board.new
      board.board[4].all? { |r| (61..75) === r }.should be_true
    end
  end

  describe "#bingo" do
    it "returns false on a new board" do
      board = Board.new
      board.bingo.should be_false
    end

    it "should return false when only some of the elements of a row are called" do
      board = Board.new
      board.board[0][0,3].fill(0)
      board.bingo.should be_false
    end
    
    it " returns true when a row is all called" do
      board = Board.new
      board.board[0].fill 0 
      board.bingo.should be_true
    end

    it "returns true when a column is all called" do
      board = Board.new
      board.board.each { |c| c[0] = 0 }
      board.bingo.should be_true
    end

    it "returns false when a column is not all called" do
      board = Board.new
      board.board[0,3].each { |c| c[0] = 0 }
      board.bingo.should be_false
    end

    it "returns true when major front diagonal is all called" do
      board = Board.new
      board.board.each_index do |i|
        board.board[i][i] = 0
      end
      board.bingo.should be_true
    end

    it "returns true when major back diagonal is all called" do
      board = Board.new
      board.board.each_index do |i|
        board.board[i][4 - i] = 0
      end
      board.bingo.should be_true
    end
  end

  describe "#mark" do
    it "sets the called to true for every element if num == val" do
      board = Board.new
      board.board[0][0]= 1
      board.mark 1
      board.board[0][0].should eql 0
    end
  end
  
end

