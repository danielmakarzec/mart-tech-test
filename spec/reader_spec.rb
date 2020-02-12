require_relative '../lib/reader'

# create a Reader class.
RSpec.describe Reader do
  describe '#initialize' do
    context 'when creating a Reader class' do
      it 'exists' do
        expect(Reader).to be_truthy
      end
    end

    # it schould initialize file path - string.

    context 'initializing new instance of Reader class' do
      it 'should be initialized with a given file path ' do
        expect(Reader).to receive(:new).with(instance_of(String))
        Reader.new('./data/webserver.log')
      end
    end
  end

  # check if the file exists.

  describe '#show' do
    context 'when procesing given file' do
      it 'raises ERROR if file does not exist' do
        expect { Reader.new('./wrong_file.log').show }.to raise_error('ERROR: Is your file path correct ?')
      end
    end
  end

  # parse the file and return an array of views.

  it 'returns an array of views' do
    expect(Reader.new('./data/webserver.log').show).not_to be_empty
  end

  # should return number of views of the given webpage.

# create a ReaderUnique class.
  # check the class inherete from The Reader.
  # should return number of unique views of the given webpage.
end
