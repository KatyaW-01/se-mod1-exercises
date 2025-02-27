require './lib/dock'
require './lib/renter'
require './lib/boat'
require 'pry'

RSpec.describe Dock do
    before(:each) do
        @dock = Dock.new("The Rowing Dock", 3)
    end
    describe "#initialize" do
        it 'exists' do
            expect(@dock).to be_a(Dock)
            expect(Dock).to respond_to(:new).with(2).arguments
        end
        it 'has a name' do
            expect(@dock.name).to eq("The Rowing Dock")
        end
        it 'has a maximum rental time' do
            expect(@dock.max_rental_time).to eq(3)
        end
    end
    describe "methods" do
        it 'can rent out boats' do
            kayak_1 = Boat.new(:kayak, 20)
            kayak_2 = Boat.new(:kayak, 20)  
            sup_1 = Boat.new(:standup_paddle_board, 15)
            patrick = Renter.new("Patrick Star", "4242424242424242") 
            eugene = Renter.new("Eugene Crabs", "1313131313131313")    

            @dock.rent(kayak_1, patrick)  
            @dock.rent(kayak_2, patrick)    
            @dock.rent(sup_1, eugene)  

            expected_hash = {
                kayak_1 => patrick,
                kayak_2 => patrick,
                sup_1 => eugene
            }
            binding.pry
            expect(@dock.rental_log).to eq(expected_hash)
            
        end
    end
end