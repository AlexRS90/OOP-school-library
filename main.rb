#!/usr/bin/env ruby
require_relative './methods/show_books'
require_relative './methods/add_books'
require_relative './methods/add_person'
require_relative './methods/show_people'
require_relative './methods/new_rental'
require_relative './methods/show_rentals'
# Json library
require 'json'
# Load memory
require_relative './memory/load_data'

class App
  include LoadData

  def welcome
    puts "\nWelcome to School Library App!"
    load_books
    load_people
    load_rentals
    @show_books = ShowBooks.new
    @add_books = AddBooks.new
    @add_person = AddPerson.new
    @show_people = ShowPeople.new
    @add_rental = AddRental.new
    @show_rentals = DisplayRentals.new
    @people = show_people
    @rentals = show_rentals
    @books = show_books
    menu
  end

  def option(answer)
    case answer
    when 1
      @show_books.show
    when 2
      @show_people.show
    when 3
      @add_person.add
    when 4
      @add_books.add
    when 5
      @add_rental.add
    when 6
      @show_rentals.show
    else
      save_books
      save_people
      save_rentals
      puts "\nThanks for your visit, have a great day!"
      abort
    end
  end

  def menu
    puts "\nPlease choose an option by entering a number:"
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person ID'
    puts '7 - Exit'
    answer = gets.chomp.to_i
    option(answer)
    menu
  end

  def save_books
    array = []
    return if @books.empty?

    @books.each { |book| array.push({ object_id: book, title: book.title, author: book.author }) }
    File.write('./json/books.json', JSON.dump(array))
  end

  def save_people
    array = []
    return if @people.empty?

    @people.each do |person|
      if person.respond_to?(:specialization)
        array.push({ type: person.class, object_id: person, id: person.id, name: person.name, age: person.age,
                     specialization: person.specialization })
      else
        array.push({ type: person.class, object_id: person, id: person.id, name: person.name, age: person.age,
                     parent_permission: person.parent_permission })
      end
    end
    File.write('./json/people.json', JSON.dump(array))
  end

  def save_rentals
    array = []
    return if @rentals.empty?

    @rentals.each do |add|
      array.push({ date: add.date, person: add.person, book: add.book })
    end
    File.write('./json/rentals.json', JSON.dump(array))
  end
end

def main
  app = App.new
  app.welcome
end

main
