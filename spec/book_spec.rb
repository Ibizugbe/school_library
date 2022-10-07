require_relative '../book'

describe Book do
  let(:book) { Book.new('Cashflow quadrant', 'Robert Kiyosaki') }

  describe '#new' do
    it 'creates a new book' do
      expect(book).to be_a(Book) # book is an instance of the Book class
    end

    it 'has a title' do
      expect(book.title).to eq('Cashflow quadrant')
    end

    it 'has an author' do
      expect(book.author).to eq('Robert Kiyosaki')
    end

    it 'has no rentals' do
      expect(book.rentals).to be_empty
    end
  end
end