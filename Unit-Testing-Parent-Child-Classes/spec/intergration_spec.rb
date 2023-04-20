require 'music_library'
require 'track'

RSpec.describe MusicLibrary do 
    it "adds track to library" do 
    music_library = MusicLibrary.new
    track = Track.new("Where am I", "U2")
    music_library.add(track)
    expect(music_library.all).to eq ["Where am I by U2"]
    end
    it "returns a list of tracks that match the keyword" do
        music_library = MusicLibrary.new
        track = Track.new("Where am I", "U2")
        music_library.add(track)
        expect(music_library.search("where")).to eq "Where am I"
    end
end 