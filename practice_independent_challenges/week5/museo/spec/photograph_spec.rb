require 'CSV'
require './lib/photograph'

RSpec.describe Photograph do
    before(:each) do
        @photograph = Photograph.new({id: "1", name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: "4", year: "1954"})
    end
    describe '#initialize' do
        it 'exists' do
            expect(@photograph).to be_a(Photograph)
        end
    end
    describe '#attributes' do
        it 'has an id number' do
            expect(@photograph.id).to eq("1")
        end
        it 'has a name' do
            expect(@photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
        end
        it 'has an id number' do
            expect(@photograph.artist_id).to eq("4")
        end
        it 'has a year' do
            expect(@photograph.year).to eq("1954")
        end
    end
end
   