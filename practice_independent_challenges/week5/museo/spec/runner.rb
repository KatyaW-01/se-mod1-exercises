require 'CSV'
require './lib/file_io'
require './lib/photograph'
require './lib/artist'


photographs_path = './data/photographs.csv'
artists_path = './dtat/artists.csv'

locations = {
    photographs: @photographs_path,
    artists: @artists_path,
    }

files = Files.from_csv(locations)
   
require 'pry'; binding.pry
