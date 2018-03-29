class Artist

attr_accessor :name, :songs
@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.tap do |artist_name|
      self.new(name) if artist_name != name
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
