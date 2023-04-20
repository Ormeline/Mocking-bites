
class MusicLibrary
    def initialize
        @tracks = []
    end
  
    def add(track) # track is an instance of Track
      @tracks << track 
      # Returns nothing
    end
  
    def all
      library = []
      @tracks.each { |track| library << track.format }
      return library
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword
    end
  end