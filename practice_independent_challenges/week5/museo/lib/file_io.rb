require 'csv'
require './lib/photograph'
require './lib/artist'

class Files
    attr_reader :photograph, :artists
    def initialize(photograph,artists)
        @photograph = photograph
        @artists = artists
    end
end

def self.from_csv(photographs_path,artists_path)
    photograph = CSV.read(photographs_path, headers: true, header_converters: :symbol)
    artists = CSV.read(artists_path, headers: true, header_converters: :symbol)

end