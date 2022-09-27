require './person'

class Teacher < Person
  def initialize(age, name = "unknown", specialization parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_service
    true
  end
end
