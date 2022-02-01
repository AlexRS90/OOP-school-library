#!/usr/bin/env ruby
require_relative 'app'
require './methods/showBooks'
require './methods/addBooks'
require './methods/addPerson'
require './methods/showPeople'
require './methods/newRental'
require './methods/showRentals'
class App 
  include Library

  def welcome
    puts "\nWelcome to School Library App!"
    $books = []
    $people = []
    $rentals = []
    @showBooks = ShowBooks.new
    @addBooks = AddBooks.new
    @addPerson = AddPerson.new
    @showPeople = Show_people.new
    @addRental = Add_rental.new
    @showRentals = Display_rentals.new
    menu
  end

  def option(answer)
    case answer
    when 1
      @showBooks.show
    when 2
      @showPeople.show
    when 3
      @addPerson.add
    when 4
      @addBooks.add
    when 5
      @addRental.add
    when 6
      @showRentals.show
    else
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
    self.menu
  end
end


def main
  app = App.new
  app.welcome
end

main
