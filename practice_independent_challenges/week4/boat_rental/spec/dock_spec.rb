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

            
            expect(@dock.rental_log).to eq(expected_hash)
            
        end
        it 'can rent and charge boats' do
            kayak_1 = Boat.new(:kayak, 20)
            kayak_2 = Boat.new(:kayak, 20)  
            sup_1 = Boat.new(:standup_paddle_board, 15)

            patrick = Renter.new("Patrick Star", "4242424242424242") 
            eugene = Renter.new("Eugene Crabs", "1313131313131313")    

            @dock.rent(kayak_1, patrick)  
            

            expect(kayak_1.hours_rented).to eq(0)
            kayak_1.add_hours
            expect(kayak_1.hours_rented).to eq(1)
            kayak_1.add_hours
            expect(kayak_1.hours_rented).to eq(2)

            @dock.rent(kayak_2, patrick)

            expect(kayak_2.hours_rented).to eq(0)
            kayak_2.add_hours
            expect(kayak_2.hours_rented).to eq(1)
            kayak_2.add_hours
            expect(kayak_2.hours_rented).to eq(2)
            kayak_2.add_hours
            expect(kayak_2.hours_rented).to eq(3)
            kayak_2.add_hours
            expect(kayak_2.hours_rented).to eq(4)


            @dock.rent(sup_1, eugene) 

            expect(sup_1.hours_rented).to eq(0)
            sup_1.add_hours
            expect(sup_1.hours_rented).to eq(1)

            expect(@dock.rental_log).to eq({kayak_1 => patrick, kayak_2 => patrick, sup_1 => eugene})

            expect(@dock.charge(kayak_1)).to eq({:card_number => "4242424242424242", :amount => 40})
            expect(@dock.charge(kayak_2)).to eq({:card_number => "4242424242424242", :amount => 60})
            expect(@dock.charge(sup_1)).to eq({:card_number => "1313131313131313", :amount => 15})

        end
        it 'can return boats' do
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

            
            expect(@dock.rental_log).to eq(expected_hash)

            @dock.return(kayak_1)

            expect(@dock.rental_log).to eq(kayak_2 => patrick, sup_1 => eugene)

            @dock.return(sup_1)

            expect(@dock.rental_log).to eq(kayak_2 => patrick)
        end
    end

end