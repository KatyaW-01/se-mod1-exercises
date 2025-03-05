class Curator
    attr_reader :photographs, :artists
    def initialize
        @photographs = []  
        @artists = []
    end

    def add_photograph(photo)
        @photographs << photo
    end

    def add_artist(artist)
        @artists << artist
    end

    def find_artist_by_id(id)
        @artists.find do |artist|
            artist.id == id
        end
    end

    def artist_and_photograph_list
        result = {}
        @artists.each do |artist|
            result[artist] = []
            @photographs.map do |photograph|
                if artist.id == photograph.id
                    result[artist] << photograph
                end
            end
            
        end
        result
    end

    def multiple_photos
        list = artist_and_photograph_list
        result = []
        list.map do |artist,photo|
            if photo.length > 1 
                result << artist
            end
        end
        result
    end
end