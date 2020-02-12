require_relative '../lib/reader_unique'

# create a ReaderUnique class.
RSpec.describe Reader do
  describe '#initialize' do
    context 'when creating a ReaderUnique class' do
      it 'exists' do
        expect(Reader).to be_truthy
      end
    end

  # check the class inherete from The Reader.
  describe 'ReaderUnique class' do
    it 'should inherit behavior from the Reader class' do
      expect(ReaderUnique).to be < Reader
    end
  end
end

  # should return number of unique views of the given webpage.
