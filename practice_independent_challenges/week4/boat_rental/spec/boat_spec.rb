require './lib/boat'

RSpec.describe Boat do
    before(:each) do
        @kayak = Boat.new(:kayak, 20)
    end
    describe "#initialize" do
        it 'exists' do
            expect(@kayak).to be_a(Boat)
            expect(Boat).to respond_to(:new).with(2).arguments
        end
        it 'has a type' do
            expect(@kayak.type).to eq(:kayak)
        end
        it 'has a price per hour' do
            expect(@kayak.price_per_hour).to eq(20)
        end
    end
    describe "other attributes" do
        it 'has hours rented' do
            expect(@kayak.hours_rented).to eq(0)
        end
        it 'can add hours' do
            expect(@kayak.hours_rented).to eq(0)

            @kayak.add_hours
            expect(@kayak.hours_rented).to eq(1)

            @kayak.add_hours
            expect(@kayak.hours_rented).to eq(2)

            @kayak.add_hours
            expect(@kayak.hours_rented).to eq(3)
        end
    end
end