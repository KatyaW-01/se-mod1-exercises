pets = {:dog => {:name => "Chance", :weight => "45 pounds"},
        :cat => {:name => "Sassy", :weight => "15 pounds"}
       }

# 1. what is pets.count
puts pets.count
# 2. what is pets.keys
puts pets.keys
# 3. what is pets.values
puts pets.values
# 4. how can I access the element "15 pounds"
puts pets[:cat][:weight]
# 5. how can I add :age => 3 to the value of the key :dog
pets[:dog][:age] = 3
p pets
