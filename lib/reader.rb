# Create a Reader class encapsulating all the necessary methods
  # initialize method should take 'file_path' paramater

class Reader
  def initialize(file_path)
    @file_path = file_path
  end

  # Return a sorted list of ALL views.

  def show
    counter(list).each_with_index do |el, index|
      print "#{index + 1} - #{el.first}"
      (20 - el.first.length).times { print '-' }
      print "#{el[1]} views"
      puts
    end
  end

  private

  # check if the file path is correct

  def file_correct?(file_path)
    raise 'ERROR: Is your file path correct ?' unless File.exist?(file_path)
  end

  # read given file and create a list of views

  def list
    file_correct?(@file_path)
    file = File.open(@file_path)
    file.map { |row| row.split(' ') }
  end
  # count number of web page views of a given list

  def counter(list)
    views = Hash.new { |hash, key| hash[key] = 0 }
    list.map { |row| views[row[0]] += 1 }
    views.sort_by { |h| h[1] }.reverse
  end
end
