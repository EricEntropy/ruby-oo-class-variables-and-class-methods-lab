class Song 
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        @name = name
        @artist = artist
        @genre = genre
    end 

    def self.count
        @@count
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        #method for turning arrays into hashes 
        @@genres.each_with_object(Hash.new(0)) do |name, hash| 
            hash[name] += 1 
        end
    end 

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)) do |name, hash| 
            hash[name] += 1 
        end
    end


end 