#!/usr/bin/env ruby
require_relative './methods/show_books'
require_relative './methods/add_books'
require_relative './methods/add_person'
require_relative './methods/show_people'
require_relative './methods/new_rental'
require_relative './methods/show_rentals'
# Json library
require 'json'
#Load memory
require_relative './memory/load_data'

class App
  include LoadData

  def welcome
    puts "\nWelcome to School Library App!"
    load_books
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
      saveBooks
      savePeople
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

  def saveBooks
    array = []
    if !@books.empty?
      @books.each { |book| array.push({title: book.title, author: book.author}) }
      File.write('./json/books.json', JSON.dump(array))
    end
  end

  def savePeople
    array = []
    if !@people.empty?
      @people.each{ |person| puts person.parent_permission } 
      File.write('./json/people.json', JSON.dump(array))
      #array.push({type: person.class, id: person.id, name: person.name, age: person.age})
    end
  end
end

def main
  app = App.new
  app.welcome
end

main
