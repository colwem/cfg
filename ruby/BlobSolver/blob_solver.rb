class BlobSolver

  def initialize grid
    @grid = grid
  end

#  counts blobs that's it

  def count
    @in_blob
    if @grid.down_cell
      blob_count += BlobSolver.new @grid.down_grid, @grid.in_blob
    else
      blob = false


  
end
