require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './book'
require_relative './classroom'

class App
  attr_accessor :people, :books, :rentals, :classroom

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def book_list
    puts 'No book!' if @books.empty?
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  def person_list
    puts 'No person!' if @people.empty?
    @people.each { |person| puts "[#{person.class}], Name: #{person.name}, Age: #{person.age}, Id: #{person.id}" }
  end

  def create_person



  end

end