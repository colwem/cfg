module BlobSolver

  class BlobFieldMaker
    attr_reader :arr
    
    @arr

    def new size
      arr = []
      @arr = (0..size).each do
        (0..size).map { rand(1)}
      end
    end
    
                          
    def print
    end
  
end
