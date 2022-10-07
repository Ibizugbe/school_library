require_relative '../decorator'
require_relative '../person'

describe CapitalizeDecorator do
  person = Person.new(23, 'Smithjohn@gmail.com')
  capitalize = CapitalizeDecorator.new(person)

  describe '#correct_name' do
    it 'capitalizes the email' do
      expect(capitalize.correct_name).to eq('Smithjohn@gmail.com')
    end
  end
end