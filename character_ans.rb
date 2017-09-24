class Character
  POINTS_PER_LEVEL = 10
  @@character_count = 0
  @@character_dead = 0
  attr_accessor :name

  def initialize(name,level,strength,speed)
    @level = level
    @strength = strength
    @speed = speed
    @stamina = 7
    puts "你召喚了一個名叫 #{@name} 的勇者！(體力值: #{@stamina})"
    @@character_count = @@Character_count + 1
  end

  def attack
    if(is_correct)
      if(use_stamina())
        damage = @strength * @speed * 0.3
        puts "你打出了 #{damage} 公斤的一拳"
      else
        puts "你沒有體力繼續出拳了..."
      end
    else
      puts "你的數值合計是錯誤的！無法執行攻擊！"
    end
  end

  def died
    if( !@dead )
      @@character_dead = @@character_dead + 1
      @dead = true
    end
  end

  def is_correct
    if (@strength + @speed) > ( POINTS * @level ) # 速度與力量合計不能等級允許的數值
      return false
    else
      return true
    end
  end

  def self.count_character # 類別方法
    @@character_count
  end

  def self.how_many_alive
    @alive = @@character_count - @@character_dead
  end

  private
  def use_stamina
    if @stamina > 0
      @stamina -= 1
      puts "#{@name} 消耗了 1 體力，還有 #{@stamina} 的體力"
      return true
    else
      return false
    end
  end
end


@hero = Character.new("Tim",5,10,10)
@hero2 = Character.new("Bernard",5,15,10)



puts "角色 1：等級 5，力量 10，速度 10：是否正確？ #{@hero.is_correct}"   # 結果：合理 True
puts "角色 2：等級 5，力量 10，速度 10：是否正確？ #{@hero2.is_correct}"   # 結果：不合理 False

@hero.attack()
@hero2.attack()

@hero.attack()
@hero.attack()
@hero.attack()
@hero.attack()
@hero.attack()
@hero.attack()
@hero.attack()

@heroes = Array.new

puts "戰場上有 #{Character.how_many_alive} 活著的角色"

(1..6).each do |i|
  @c = Character.new("Soldier #{i}")
  @heroes.push( @c )
end

@heroes[2].died
@heroes[2].died
@heroes[2].died
@heroes[4].died
