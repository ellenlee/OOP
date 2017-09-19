load 'character.rb'

class Warrior < Character
  def initialize strength
    super strength
  end

  def use_hero_power monster
    status
    return strength * 1.2
  end
end

class Mage < Character

  def initialize strength
    super strength
    @magic = 100
    @mp = 3
  end

  def use_hero_power monster
    status
    if
    return magic
  end
end

@you = Warrior.new 10
@mage = Mage.new 4

puts "你遇到了一位同為冒險者的 Razor！他是一位 #{@him.job} ！"
puts "你們達成協議一起闖迷霧森林，於是一起踏上旅程"


