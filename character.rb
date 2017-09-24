class Character
  attr_accessor :name

  def initialize(name)
    @name = name
    @stamina = 7
    puts "你召喚了一個名叫 #{@name} 的勇者！(體力值: #{@stamina})"
  end

  def use_stamina
    @stamina -= 1
  end
end

puts "請問你的勇者名稱？"
hero_name = gets.chomp

hero = Character.new(hero_name)
puts "你的勇者 #{hero.name} 準備出發去迷霧森林了！"

hero.use_stamina
