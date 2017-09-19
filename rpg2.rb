class Character
  attr_accessor :name
  def initialize name
    @name = name
    @hp = 40
    @speed = 1
  end

  def get_name      # 教 更換成 attr_accessor
    @name
  end

  def move
    return @speed
  end

  def  still_alive
    return !(@hp <= 0)
  end
end

puts "請問你的冒險者名稱？"
charname = gets
charname.delete!("\n")

@yourchar = Character.new charname

puts "你的冒險者 #{@yourchar.name} 準備出發去迷霧山莊了！"



loc = 0
count = 0

while( loc < 21 && count < 7)
  puts "你的冒險者 #{@yourchar.get_name} 在 1 小時內奔走了 #{@yourchar.move} 公里" 
  loc += @yourchar.move
  count += 1
end

total = @yourchar.move * count

if count >= 7
  puts "你跑了 #{count} 小時，跑太慢了！糧食都已經吃光了！只好回去市鎮補貨再來過！"
elsif loc > 24
  puts "你跑了 #{total} 步跑過了頭，你錯過了該去的地方，只好折返回城鎮重新來過！"
else
  puts "#{@yourchar.get_name} 花了 #{count} 回合抵達迷霧森林！準備迎接下一個挑戰吧！"
end
