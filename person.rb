class Person
  def initialize(age, name = "unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
  end


end