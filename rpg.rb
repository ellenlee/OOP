class Character
  attr_accessor :name,:speed
  def initialize name
    @name = name
    @stamina = 7
    @speed = 1
  end

  def get_name      # 教 更換成 attr_accessor
    @name
  end

  def move
    return @speed
  end

  def  still_can_run
    status
    return @stamina > 0
  end

  def use_stamina
    @stamina -= 1
  end

  private
  def status
    puts "冒險者 #{@name} 還擁有 #{@stamina} 的體力"
  end
end

puts "請問你的冒險者名稱？"
charname = gets
charname.delete!("\n")

@yourchar = Character.new charname

puts "你的冒險者 #{@yourchar.name} 準備出發去迷霧山莊了！"



loc = 0
count = 0

while( loc < 21)
  puts "你的冒險者 #{@yourchar.get_name} 在 1 小時內奔走了 #{@yourchar.move} 公里" 
  loc += @yourchar.move
  @yourchar.use_stamina
  count += 1
  if !@yourchar.still_can_run
    break
  end
end

total = @yourchar.move * count

if count >= 7
  puts "你耗盡了體力，只能搭乘路過的商人馬車回市鎮補貨！"
elsif loc > 24
  puts "你跑了 #{total} 步跑過了頭，你錯過了該去的地方，只好折返回城鎮重新來過！"
else
  puts "#{@yourchar.get_name} 花了 #{count} 小時抵達迷霧森林！準備迎接下一個挑戰吧！"
end
