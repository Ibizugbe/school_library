require_relative '../student'

describe Student do
  # the let method is used to create a variable that can be used in the tests
  let(:student) do
    Student.new(23, 'Classroom 1', 'Smith')
  end
  describe '#new' do
    it 'creates a new student' do
      expect(student).to be_a(Student)
    end

    it 'has a name' do
      expect(student.name).to eq('Smith')
    end

    it 'has an age' do
      expect(student.age).to eq(23)
    end

    it 'has a classroom' do
      expect(student.classroom).to eq('Classroom 1')
    end
  end
end
