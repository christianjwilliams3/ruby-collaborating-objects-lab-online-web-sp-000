
class MP3Importer
  attr_accessor :path

   def initialize(path)
    @path = path
  end

   def files
    Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
  end

   def import
    files.each { |file| Song.new_by_filename(file) }
  end
end 

#MP3Importer.new('./spec/fixtures').import

#Song.new_by_filename(some_filename)