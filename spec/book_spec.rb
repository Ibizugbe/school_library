require_relative '../book'

describe Book do
  let(:book) { Book.new('Fabricated', 'Yokasimoto') }

  describe '#new' do
    it 'creates a new book' do
      expect(book).to be_a(Book) # book is an instance of the Book class
    end

    it 'has a title' do
      expect(book.title).to eq('Fabricated')
    end

    it 'has an author' do
      expect(book.author).to eq('Yokasimoto')
    end

    it 'has no rentals' do
      expect(book.rentals).to be_empty
    end
  end
end
