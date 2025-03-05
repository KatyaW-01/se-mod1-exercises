 require 'CSV'
 require './lib/artist'

 RSpec.describe Artist do
    before(:each) do
        @artist = Artist.new({id: "2", name: "Ansel Adams", born: "1902", died: "1984", country: "United States"})
    end
    describe "#initialize" do
        it 'exists' do
            expect(@artist).to be_a(Artist)
        end
        it 'has an id number' do
            expect(@artist.id).to eq("2")
        end
        it 'has a name' do
            expect(@artist.name).to eq("Ansel Adams")
        end
        it 'has a year it was born' do
            expect(@artist.born).to eq("1902")
        end
        it 'has a year it died' do
            expect(@artist.died).to eq("1984")
        end
        it 'has a country of origin' do
            expect(@artist.country).to eq("United States")
        end
    end
    describe '#methods' do
        it 'has an age at death' do
            expect(@artist.age_at_death).to eq(82)
        end
    end
 end
 