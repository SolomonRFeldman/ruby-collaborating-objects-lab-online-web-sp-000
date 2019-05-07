class MP3Importer
  
  def initialize(directory)
    @files = []
    Dir["#{directory}/*.rb"]
  end
  
end