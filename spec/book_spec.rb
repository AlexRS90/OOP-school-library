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

    it "When class Book is instantiated, it should contain 3 variables (Rentals must be array) " do 
        containsName = @book.respond_to?(:title) 
        containsAuthor = @book.respond_to?(:author) 
        containsRental = @book.rental.kind_of?(Array)

        expect(containsName).to eq true
        expect(containsAuthor).to eq true
        expect(containsRental).to eq true
     end
end