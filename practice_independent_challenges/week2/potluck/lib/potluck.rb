require './lib/dish'
require 'pry'
class Potluck
    attr_reader :date, :dishes
    def initialize(date)
       @date = date
       @dishes = []
    end

    def add_dish(dish)
        @dishes << dish
    end

    def potluck_dishes_length
        dishes.length
    end

    def get_all_from_category(category)
        binding.pry
        dishes.find_all do |category|
            dishes.category == category
            
        end
    end
end