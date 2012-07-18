
class Library

  attr_accessor :books

  def initialize(lib_file = nil)
    @lib_file = lib_file
    @books = @lib_file ? YAML::load(File.read(@lib_file)) : []
  end

  def get_books_in_category category
    @books.find_all {|book| book.category == category}
  end

  def add_book book
    if book.is_a? Book
      @books << book
    end
  end

  def get_book(title)
    @books.find {|book| book.title == title }
  end

  def save lib_file = nil
    @lib_file = lib_file || @lib_file || "library.yml"
    File.open @lib_file, 'w' do |f|
      f.write YAML::dump @books
    end
  end
    
end
