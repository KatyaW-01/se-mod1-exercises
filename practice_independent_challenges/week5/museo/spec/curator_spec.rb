require './lib/photograph'
require './lib/artist'
require './lib/curator'
require 'pry'

RSpec.describe Curator do
    before(:each) do
        @curator = Curator.new
    end
    describe '#initialize' do
        it 'exists' do
            expect(@curator).to be_a(Curator)
        end
    end
    describe "#attributes" do
        it 'has an array of photographs' do
            expect(@curator.photographs).to eq([])
        end
        it 'has an array of artists' do
            expect(@curator.artists).to eq([])
        end
    end
    describe "#methods" do
        it 'can add photographs' do
            expect(@curator.photographs).to eq([])

            photo_1 = Photograph.new({id: "1", name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: "1", year: "1954"}) 
            @curator.add_photograph(photo_1)
            expect(@curator.photographs).to eq([photo_1])

            photo_2 = Photograph.new({id: "2", name: "Moonrise, Hernandez", artist_id: "2", year: "1941"}) 
            @curator.add_photograph(photo_2)
            expect(@curator.photographs).to eq([photo_1, photo_2])
        end
        it 'can add artists' do
            expect(@curator.artists).to eq([])

            artist_1 = Artist.new({id: "1", name: "Henri Cartier-Bresson", born: "1908", died: "2004", country: "France"})  
            @curator.add_artist(artist_1)
            expect(@curator.artists).to eq([artist_1])

            artist_2 = Artist.new({id: "2", name: "Ansel Adams", born: "1902", died: "1984", country: "United States"})    
            @curator.add_artist(artist_2)
            expect(@curator.artists).to eq([artist_1,artist_2])
        end
        it 'can find an artist by the artist id' do
            artist_1 = Artist.new({id: "1", name: "Henri Cartier-Bresson", born: "1908", died: "2004", country: "France"})  
            artist_2 = Artist.new({id: "2", name: "Ansel Adams", born: "1902", died: "1984", country: "United States"})  
            @curator.add_artist(artist_1)
            @curator.add_artist(artist_2)

            expect(@curator.find_artist_by_id("1")).to eq(artist_1)
        end
        it 'can return a list of artists and their photographs' do
            artist_1 = Artist.new({id: "1", name: "Henri Cartier-Bresson", born: "1908", died: "2004", country: "France"})  
            artist_2 = Artist.new({id: "2", name: "Ansel Adams", born: "1902", died: "1984", country: "United States"})  

            @curator.add_artist(artist_1)
            @curator.add_artist(artist_2)

            photo_1 = Photograph.new({id: "1", name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: "1", year: "1954"}) 
            photo_2 = Photograph.new({id: "2", name: "Moonrise, Hernandez", artist_id: "2", year: "1941"}) 

            @curator.add_photograph(photo_1)
            @curator.add_photograph(photo_2)

            expect(@curator.artist_and_photograph_list).to eq({artist_1 => [photo_1], artist_2 => [photo_2]})
        end
        it 'can list name of artists with more than one photograph' do
            artist_1 = Artist.new({id: "1", name: "Henri Cartier-Bresson", born: "1908", died: "2004", country: "France"})  
            artist_2 = Artist.new({id: "2", name: "Ansel Adams", born: "1902", died: "1984", country: "United States"})  

            @curator.add_artist(artist_1)
            @curator.add_artist(artist_2)

            photo_1 = Photograph.new({id: "1", name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: "1", year: "1954"}) 
            photo_2 = Photograph.new({id: "1", name: "Moonrise, Hernandez", artist_id: "2", year: "1941"}) 

            @curator.add_photograph(photo_1)
            @curator.add_photograph(photo_2)

            expect(@curator.multiple_photos).to eq([artist_1])

        end
    end
end