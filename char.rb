class Character

  def initialize name
    @name = name
    @hp = 40
    @speed = 1
  end

  def get_name
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

loc = 0
count = 0

while( loc < 21 && count < 7)
  puts "你的冒險者 #{@yourchar.get_name} 往前移動 #{@yourchar.move} 步" 
  loc += @yourchar.move
  count += 1
end

total = @yourchar.move * count

if count >= 7
  puts "你跑了 #{count} 小時，跑太慢了！糧食都已經吃光了！你需要回去市鎮補貨再來過！"
elsif loc > 24
  puts "你跑了 #{total} 步跑過了頭，你錯過了該去的地方，直接抵達了下一個城鎮！"
else
  puts "#{@yourchar.get_name} 花了 #{count} 回合抵達迷霧森林！準備迎接下一個挑戰吧！"
end
