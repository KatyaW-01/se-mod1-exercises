# 1. Using #each, add to the method below, such that it takes in an array of names, 
# and returns an array of all names upcased.

kardashians = ["kris", "kim", "kourtney", "khloe", "rob"] # global variable

def upcase_names(names) #variables inside this fuction are local variables and cannot access global variables
    upper_kard = []
 names.each do |name|
    upper_kard << name.upcase
 end
 upper_kard
end 

p upcase_names(kardashians)

# should return ["KRIS", "KIM", "KOURTNEY", "KHLOE", "ROB"]






# 2. Using #each, update the method below, such that it takes in an array of names,
# and returns a collection of the names that end in 'ie'

pets = ["Brutus", "Lucky", "Goldie", "Pepper", "Odie"]

def names_ending_in_ie(names)
    pets_ie = []
 names.each do |pet_name|
    if pet_name.end_with?('ie')
        pets_ie << pet_name
    end
 end
 pets_ie
end 

p names_ending_in_ie(pets)

# should return an array of ["Goldie", "Odie"]






# 3. Using #each, update the method below, such that it takes in an array of integers,
# and returns the first number that is over 100 when squared. 

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def first_num_thats_square_is_above_100(nums)
    nums.each do |num|
        num = num * num 
        if num > 100
            puts num 
        end

    end

end 

p first_num_thats_square_is_above_100(nums)

# should return the integer 11