require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Time.new.to_i
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age
    @age >= 18
  end

  private :is_of_age

  def can_use_service
    of_age || @parent_permission
  end

  def correct_name
    @name
  end

  def rent_book(person, date)
    Rental.new(date, person, self)
  end
end
