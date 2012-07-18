require 'spec_helper.rb'


describe "blob solver" do

  
end

describe Grid do
  before :each do
    tru = {:marked => false, :val => true}
    fal = {:marked => false, :val => false}
    @assigned_grid = Grid.new [[fal.clone,tru.clone],
                               [tru.clone,fal.clone]]
    @random_grid = Grid.new 4
  end
  
  describe "#new" do
    context "passed integer" do 
      it "creates a square randomly initialized grid" do
        @random_grid.grid.size.should eql 4
        @random_grid.grid[0].size.should eql 4
      end
    end

    context "passed array" do
      it "creates a grid based on array" do
      end
    end
    
  end

  it "prints the grid" do
    str = @assigned_grid.prints
    str.should eql "o x\nx o"
  end

  describe "#visit" do
    it "marks a cell visited" do
      @assigned_grid.visit(1,1)
      @assigned_grid[1][1][:marked].should be_true
    end
  end

  describe "#visited" do
    it "is false if not marked" do
      @assigned_grid.visited(1,1).should be_false
    end
    it "should be true if marked" do
      @assigned_grid[1][1][:marked] = true
      @assigned_grid.visited(1,1).should be_true
    end
  end

  describe "#truth" do
    it "should be true if cell is true" do
      @assigned_grid.truth(1,0).should be_true
    end

    it "should be false if the cell is false" do
      @assigned_grid.truth(1,1).should be_false
    end
  end
  
end
