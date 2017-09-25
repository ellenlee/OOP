class Character
  POINTS_PER_LEVEL = 10

  @@character_count = 0

  attr_accessor :name, :strength, :speed

  def initialize
    set_name
    @level = 1
    @stamina = 7

    set_strength_and_speed

    @@character_count += 1
  end

  def set_name
    puts "請問你的勇者名稱？"
    @name = gets.chomp
    puts "你召喚了一個名叫 #{@name} 的勇者！"
  end

  def set_strength_and_speed
    puts "請輸入攻擊力。（剩餘點數：#{POINTS_PER_LEVEL}）"
    self.strength = gets.chomp.to_i

    puts "請輸入速度。（剩餘點數：#{POINTS_PER_LEVEL - @strength}）"
    self.speed = gets.chomp.to_i

    validate_distribution_of_points
  end

  def use_stamina
    @stamina -= 1
    stamina_left # 在 class 內部呼叫私有方法 stamina_left
  end

  def validate_distribution_of_points
    if (@strength + @speed) > ( POINTS_PER_LEVEL * @level ) # 速度與力量合計不能超過等級允許的數值
      puts "數值設定有誤，請再設定一次!!"
      set_strength_and_speed
    else
      puts "設定完成！你的勇者 #{@name} 攻擊力：#{@strength}, 速度：#{@speed}"
    end
  end

  def self.count
    @@character_count
  end

  private

  def stamina_left
    puts "#{@name} 還擁有 #{@stamina} 的體力"
  end
end

hero = Character.new
puts "你的勇者 #{hero.name} 準備出發去迷霧森林了！"

puts "目前遊戲中有 #{Character.count} 個勇者"
