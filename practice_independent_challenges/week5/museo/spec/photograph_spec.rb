require 'CSV'
require './lib/photograph'

RSpec.describe Photograph do
    before(:each) do
        @photograph = Photograph.new(attributes)
        
    end
    describe '#initialize' do1
        it 'exists' do
            expect(@photograph).to be_a(Photograph)
        end
    end
    describe '#attributes' do
        
    end
end