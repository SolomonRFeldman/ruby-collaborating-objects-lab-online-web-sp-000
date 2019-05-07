class MP3Importer
  
  def initialize(directory)
    @files = []
    Dir[directory]
  end
  
end