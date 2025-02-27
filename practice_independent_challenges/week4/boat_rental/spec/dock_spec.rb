require './lib/dock'
require './lib/renter'
require './lib/boat'

RSpec.describe Dock do
    before(:each) do
        @dock = Dock.new("The Rowing Dock", 3)
    end
    describe "#initialize" do
        it 'exists' do
            expect(@dock).to be_a(Dock)
            expect(Dock).to respond.to(:new).with(2).arguments
        end
    end
end