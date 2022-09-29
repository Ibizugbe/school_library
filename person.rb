require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Time.new.to_i
    @age = age
    @name = name
    @parent_permission = parent_permission
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
end
