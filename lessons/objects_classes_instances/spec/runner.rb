require "../lib/unicorn.rb"

sparkles = Unicorn.new("Sparkles", "Glitter")
rainbow = Unicorn.new("Rainbow","Red")


require "pry"; binding.pry 

sparkles.add_power("flight")

require "pry"; binding.pry 


puts sparkles.name
puts sparkles.color
