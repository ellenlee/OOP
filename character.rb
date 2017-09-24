class Character
  POINTS_PER_LEVEL = 10

  attr_accessor :name

  def initialize
    set_name
    @stamina = 7
    puts "#{@name} 的體力值: #{@stamina}"
  end

  def set_name
    puts "請問你的勇者名稱？"
    @name = gets.chomp
    puts "你召喚了一個名叫 #{@name} 的勇者！"
  end

  def use_stamina
    @stamina -= 1
    stamina_left # 在 class 內部呼叫私有方法 stamina_left
  end

  private

  def stamina_left
    puts "#{@name} 還擁有 #{@stamina} 的體力"
  end
end

hero = Character.new
puts "你的勇者 #{hero.name} 準備出發去迷霧森林了！"
