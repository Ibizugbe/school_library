require_relative '../classroom'

describe Classroom do
  let(:classroom) { Classroom.new('Classroom 1') }

  describe '#new' do
    it 'creates a new classroom' do
      expect(classroom).to be_a(Classroom)
    end

    it 'has a label' do
      expect(classroom.label).to eq('Classroom 1')
    end
  end
end
