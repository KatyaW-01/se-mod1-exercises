require 'csv'
require './lib/photograph'
require './lib/artist'

class Files
    attr_reader :photograph, :artists
    def initialize(photograph,artists)
        @photograph = photograph
        @artists = artists
    end


    def self.from_csv(locations)
        photograph = CSV.read(locations[:photographs], headers: true, header_converters: :symbol)
        artists = CSV.read(locations[:artists], headers: true, header_converters: :symbol)

        self.new(photograph,artists)
    end
end