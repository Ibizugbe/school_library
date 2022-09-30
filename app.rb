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
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp

    when '1'
      create_student
    when '2'
      create_teacher
    else
      'You have entered an invalid input'
    end
    puts 'Person created successfully😊'  
  end

  def create_teacher
    print "teacher's specialization: "
    specialization = gets.chomp
    print "teacher's age: "
    age = gets.chomp
    print "teacher's name: "
    name = gets.chomp
    teacher = Teacher.new(specialization, age, name, parent_permission: true)
    puts 'Teacher created successfully 😊'
    @people.push(teacher)
  end

  def create_student
    print "students's age: "
    age = gets.chomp

    print "students's name: "
    name = gets.chomp

    print 'has parent permission? [Y/N]: '
    parent_permission = gets.chomp.upcase

    case parent_permission
    when 'N'
      student = Student.new(nil, age, name, parent_permission: false)
      @people.push(student)
    when 'Y'
      student = Student.new(nil, age, name, parent_permission: true)
      @people.push(student)
    else
      'You have entered an invalid input'
    end

    puts 'Student created successfully 😊'
  end

  def create_book
    print "book's title: "
    title = gets.chomp

    print "book's author: "
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)

    puts 'Book created successfully 😊'
  end

end