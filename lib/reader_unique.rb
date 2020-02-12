class ReaderUnique < Reader
  def initialize(file_path)
    super
  end

  private

  #  edit list method to get "unique" list

  def list
    super
    file = File.open(@file_path)
    file.uniq.map { |row| row.split(' ') }
  end
end
