require "music_library"

RSpec.describe MusicLibrary do 
    it "adds track to library" do 
        music_library = MusicLibrary.new
        track = FakeTrack.new
        music_library.add(track)
        expect(music_library.all).to eq ["Where am I by U2"]
    end
end 

class FakeTrack
    def initialize
        "Where am I by U2"
    end

    def format
        "Where am I by U2"
    end 

    def matches?() # keyword is a string
      # Returns true if the keyword matches either the title or artist
    end
end

