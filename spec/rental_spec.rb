require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
  let(:book) { Book.new('Cashflow quadrant', 'Robert Kiyosaki') }
  let(:person) { Person.new(23, 'John Smith') }
  let(:rental) { Rental.new('2021-04-09', person, book) }

  describe '#new' do
    it 'creates a new rental' do
      expect(rental).to be_a(Rental)
    end

    it 'has a date' do
      expect(rental.date).to eq('2021-04-09')
    end

    it 'has a book' do
      expect(rental.book).to eq(book)
    end

    it 'has a person' do
      expect(rental.person).to eq(person)
    end

    it 'adds the rental to the book' do
      expect(book.rentals).to include(rental)
    end
  end
end