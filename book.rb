class Book
  attr_accessor :title, :author, :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end

end

#Unit testing for Book class
describe Book do 
     
     it "When class Book is instantiated, it should contain 3 variables (Rentals must be array) " do 
        newBook = Book.new('Test1', 'Author1')
        containsName = newBook.respond_to?(:title) 
        containsAuthor = newBook.respond_to?(:author) 
        containsRental =newBook.rental.kind_of?(Array)

        expect(containsName).to eq true
        expect(containsAuthor).to eq true
        expect(containsRental).to eq true
     end
     
end