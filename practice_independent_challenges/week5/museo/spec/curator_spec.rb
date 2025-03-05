require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do
    before(:each) do
        @curator = Curator.new
    end
    describe '#initialize' do
        expect(@curator).to be_a(Curator)
    end
end