require 'csv'

RSpec.describe Files do
    before(:each) do
        @photographs_path = './data/photographs.csv'
        @artists_path = './dtat/artists.csv'

        @files = Files.from_csv(@artists_path,@photographs_path)
    end
end