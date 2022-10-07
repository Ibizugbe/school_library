require_relative '../person'
describe Person do
  let(:person) { Person.new(67, 'Doana') }

  describe '#new' do
    it 'creates a new person' do
      expect(person).to be_a(Person)
    end

    it 'has a name' do
      expect(person.name).to eq('Doana')
    end

    it 'has an age' do
      expect(person.age).to eq(67)
    end
  end
end
