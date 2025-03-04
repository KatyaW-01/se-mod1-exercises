
class Photograph
    attr_reader :attributes
    def initialize(attributes)
        attributes = CSV.read('./data/photograph.csv', headers: true, header_converters: :symbol)
    end
end

#@attributes = CSV.read('./data/photograph.csv', headers: true, header_converters: :symbol)
        #@id = attributes[:id]