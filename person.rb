class Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :id
  def initialize(age, name = "unknown", parent_permission: true)
    @id = Time.new.to_i
    @age = age
    @name = name
  end


end