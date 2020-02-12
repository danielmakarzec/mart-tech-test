# Create a Reader class encapsulating all the necessary methods
  # initialize method should take 'file_path' paramater

class Reader
  def initialize(file_path)
    @file_path = file_path
  end

  # Return a sorted list of ALL views.

  def show
    file_correct?(@file_path)
  end

  # check if the file path is correct

  def file_correct?(file_path)
    raise 'ERROR: Is your file path correct ?' unless File.exist?(file_path)
  end

  # read given file and create a list of views
  # count number of web page views of a given list
end
