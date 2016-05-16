require "pry"

class Menu
  attr_accessor :foods, :name
  def initialize(name, foods)
    @name = name #string
    @foods = foods #hash
  end

# outputs display values from class
  def display
    puts "--- #{@name} ---"
    i = 1
    @foods.each do |food, info|
        puts "#{i}) #{food}: $#{info[0]} - #{info[1]} cals."
        i += 1
  end
  end
end

# Stored hashes
main_menu = {
  "Burger": [1.80, 200],
  "Taco": [1.00, 150],
  "Burrito": [4.50, 900]
}

side_dish = {
  "Red beans & Rice": [0.95, 170],
  "Green Beans": [0.70, 120],
  "Fries": [1.05, 350]
}



def display_total

end

# Sends specific menu objects to the Menu class
main = Menu.new("Main Menu", main_menu)
side = Menu.new("Side Dishes", side_dish)

# Pulls
puts "--- Welcome to my restaurant ---"
main.display
main_selection = gets.strip.downcase

puts "Please pick two sides"
side.display
side1_selection = gets.strip.downcase
side2_selection = gets.strip.downcase


# Tell users what they ordered and how much it costs (Concatenation)
puts "You ordered:"
puts main_selection
puts "#{side1_selection} & #{side2_selection}"

# Add totals together of what they ordered
total = hash[:main_selection] + hash[:side1_selection] + hash[:side2_selection]
puts total

#  # user chooses from a list of main dishes
#  main_dishes = {1=>'Taco', 2=>'Burrito', 3=>'Burger'}
#
#  side_dishes = {1=>'Red beans & rice', 2=>'Green beans', 3=>'Fries'}
#
# # Main dish menu
# puts "--- Menu ---"
# puts "1) Taco ($1.00)"
# puts "2) Burrito ($3.50)"
# puts "3) Burger ($4.50)"
# main_selection = gets.to_i
# puts main_dishes[main_selection]
#
# # Side dish menu
# puts "-- Choice of Sides --"
# puts "1) Red beans & rice ($.80)"
# puts "2) Green Beans ($1.00)"
# puts "3) Fries ($1.20)"
# select_side1 = gets.to_i
# select_side2 = gets.to_i
#
#
#  side_dishes = {}
#  # user chooses 2 side dish items
#  # computer repeats users order
#  puts "Your order: \n"
#  puts main_dishes[main_selection]
#  puts side_dishes[select_side1]
#  puts side_dishes[select_side2]
#
#  # computer totals lunch items and displays total
