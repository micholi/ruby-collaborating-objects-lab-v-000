class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").map {|filepath| filepath.gsub("#{path}/", "")}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
