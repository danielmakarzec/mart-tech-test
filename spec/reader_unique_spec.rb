require_relative '../lib/reader_unique'

# create a ReaderUnique class.
RSpec.describe ReaderUnique do
  describe 'ReaderUnique class' do
    context 'when creating a ReaderUnique class' do
      it 'exists' do
        expect(Reader).to be_truthy
      end

      # check the class inherete from The Reader.
      it 'should inherit behavior from the Reader class' do
        expect(ReaderUnique).to be < Reader
      end
    end
  end

  # should return number of unique views of the given webpage.

  describe '#show' do
    context 'when procesing given file' do
      it 'returns a number of views for each page' do
        expect(ReaderUnique.new('./data/webserver.log').show[1].last).to eq(23)
      end
    end
  end
end
