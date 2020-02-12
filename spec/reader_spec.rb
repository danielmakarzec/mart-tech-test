require_relative '../lib/reader'

# create a Reader class.
RSpec.describe Reader do
  describe '#initialize' do
    context 'when creating a Reader class' do
      it 'exists' do
        expect(Reader).to be_truthy
      end
    end
  end
  # it schould initialize file path - string.
  # check if the file exists.
  # parse the file and return an array of views.
  # should return number of views of the given webpage.

# create a ReaderUnique class.
  # check the class inherete from The Reader.
  # should return number of unique views of the given webpage.
end
