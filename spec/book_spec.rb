require 'minitest/autorun'
require_relative '../book'

describe Book do
    before :each do
        @book = Book.new('Percy Jackson', 'Rick Riordan')
    end

    it 'book is instance of Book class' do
        expect(@book).to be_instance_of Book  
    end

    it 'title' do
        title = @book.title
        expect(title).to eql 'Percy Jackson'
    end

    it 'author' do
        author = @book.author
        expect(author).to eql 'Rick Riordan'
    end
end
