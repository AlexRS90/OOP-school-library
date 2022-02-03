require_relative '../person'
require_relative '../rental'
require_relative '../book'

describe Person do
  before :each do
    @person = Person.new(21, 123, 'Luis')
  end

  it 'is person created?' do
    expect(@person).to have_attributes(age: 21)
    expect(@person).to have_attributes(name: 'Luis')
    expect(@person).to have_attributes(id: 123)
  end

  it 'can use service?' do
    expect(@person.can_use_services?).to be true
  end

  it 'no rentals?' do
    expect(@person.rental.length).to be 0
  end

  it 'have rentals?' do
    @book = Book.new('Percy Jackson', 'Rick Riordan')

    @person.add_rentals('12-12-2009', @book)
    expect(@person.rental.length).not_to be 0
  end
end
