require 'minitest/autorun'
require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do

    before :each do 
        @person1 = Person.new(59, 'Miguel')
        @person2 = Person.new(89, 'Marta')

        @book1 = Book.new('Percy Jackson', 'Rick Riordan')
        @book2 = Book.new('Percy Jackson y el ladron del rayo', 'Rick Riordan')

        @rental = Rental.new('25-25-2007', @person1, @book1)
    end
    
    it 'Returns a rental obj?' do
        expect(@rental).to be_instance_of Rental
    end

    it 'correct date?' do
        expect(@rental.date).to eql '25-25-2007'
    end

    it 'correct person?' do
        expect(@rental.person).to eql @person1
    end

    it 'correct pbook?' do
        expect(@rental.book).to eql @book1
    end

    it 'have the correct person?' do
        expect(@person1.rental).to include(@rental)
    end

    it 'have the correct rental?' do
        expect(@book1.rental).to include(@rental)
    end

end
