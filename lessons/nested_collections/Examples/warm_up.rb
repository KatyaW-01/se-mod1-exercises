animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}

# 1. return the value of dogs
puts animals["dogs"]
# 2. add 3 parakeets
animals["parakeets"]= 3

# 3. increase the amount of cats by 2
animals["cats"] +=2


pet_names = ["Fela", "Spot", "Patch", "Willy"]

# 1. add “Claude” to the end of the array
pet_names.append("Claude")
# or pet_names << "Claude"
p pet_names
# 2. access the first name in the list
puts pet_names[0]
# 3. access the last name in the list
puts pet_names.last
#or pet_names[-1]
# 4. remove “Fela” from the list
pet_names.delete("Fela")
#pet_names.shift will remove the first element in the array
p pet_names
