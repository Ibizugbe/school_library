require_relative '../decorator'
require_relative '../person'

describe CapitalizeDecorator do
  person = Person.new(45, 'johndoe@gmail.com')
  capitalize = CapitalizeDecorator.new(person)

  describe '#correct_name' do
    it 'capitalizes the email' do
      expect(capitalize.correct_name).to eq('Johndoe@gmail.com')
    end
  end
end
