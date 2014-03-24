class Book
  def initialize (title, author, pages, year)
    @title = title 
    @author = author 
    @pages = pages 
    @year = year
    @count_readed = 0
  end
  attr_reader :title, :author, :pages, :year
  attr_writer :title, :author, :pages, :year
  def to_s
    "#{@title}"
  end
end
book_1 = Book.new("Pan Tadeusz", "Adam Mickiewicz", 200, 1834)
book_2 = Book.new("American Gods", "Neil Gaiman", 200, 2001)
book_3 = Book.new("Kordian", "Juliusz Słowacki", 200, 1834)

#book_1 = Book.new("Pan Tadeusz", "Adam Mickiewicz", 200, 1834)
#book_1.author = "Juliusz Slowacki"
puts book_1.year
puts book_1.to_s
