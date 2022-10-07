require_relative '../decorator'
require_relative '../person'

describe TrimmerDecorator do
  person = Person.new(18, 'Smithjohn@gmail.com')
  trimmer = TrimmerDecorator.new(person)

  describe '#correct_name' do
    it 'returns the first 10 characters of the name' do
      expect(trimmer.correct_name).to eq('Smithjohn@')
    end
  end
end