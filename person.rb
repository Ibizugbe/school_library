class Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :id
  def initialize(age, name = "unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
  end


end