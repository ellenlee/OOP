# puts "load character.rb"
require './character.rb'

class Warrior
end

class Mage < Character
end

puts "start test"

Mage.new

puts Mage.count
# puts Character.count
