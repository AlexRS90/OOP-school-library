require_relative '../book'

describe Book do
  before :each do
    @book = Book.new('Percy Jackson', 'Rick Riordan')
  end

  it 'book is instance of Book class?' do
    expect(@book).to be_instance_of Book
  end

  it 'title?' do
    title = @book.title
    expect(title).to eql 'Percy Jackson'
  end

  it 'author?' do
    author = @book.author
    expect(author).to eql 'Rick Riordan'
  end

  it 'When class Book is instantiated, it should contain 3 variables (Rentals must be array) ' do
    contains_name = @book.respond_to?(:title)
    contains_author = @book.respond_to?(:author)
    contains_rental = @book.rental.is_a?(Array)

    expect(contains_name).to eq true
    expect(contains_author).to eq true
    expect(contains_rental).to eq true
  end
end
