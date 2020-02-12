require './lib/reader'
require './lib/reader_unique'

def run(path)
  Reader.new(path).show
  ReaderUnique.new(path).show
end

run('data/webserver.log')
