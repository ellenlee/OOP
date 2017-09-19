class Character
  attr_accessor :name,:speed,:strength

  BALANCE = 20
  @@Characterno = 0

  def initialize strength
    @name = "Arch"
    @hp = 40
    @speed = 15
    @strength = strength
    @@Characterno += 1
  end

  def duel strength
    status
    if self.strength > strength
      return true
    else
      return false
    end
  end

  def skip
    return @speed * 1.5
  end

  def is_balance
    puts self.strength.to_s
    if (self.strength + self.speed) > BALANCE
      return false
    else
      return true
    end
  end

  def  still_can_run
    return @stamina > 0
  end

  private
  def status
    puts "冒險者 #{@name} 還擁有 #{@strength} 的力量"
  end
end

def isint inputer
  return ans = inputer =~ /\A\d+\z/ ? true : false
end

puts "請輸入你的冒險者的力量！力量和速度（速度請在執行前調整喔～）總和不可以超過 20！"
strength = gets.chomp

valid = isint strength

if !valid
  abort "你似乎輸入了一些奇怪的資料，冒險者因不堪資料錯誤而中毒身亡了。"
end

strength = strength.to_i
@cc = Character.new strength
@monster = Character.new 18

if !@cc.is_balance
  abort "力量和速度總和不可以超過 20 ... 實力超過的話應該去魔王城，而不是迷霧森林了..."
end

puts "你的冒險者 #{@cc.name} 抵達迷霧森林，眼前出現了一隻怪物，請問他該怎麼做？"
puts "1 當然是直接打趴它"
puts "2 神不知鬼不覺地繞過"
puts "選擇打趴它，請輸入 1 ；選擇閃過它，請輸入 2 "

decision = gets.chomp.to_i

if decision == 1
  ans = @cc.duel @monster.strength
  if ans
    # duel
  else
    puts "你的力量太弱了，連怪物的一拳都抵擋不了，交手瞬間被揍飛"
  end
elsif decision == 2
  if @cc.move > 20
    puts "一眨眼，"
  end
else
  puts "你猶豫不決的期間，不小心踢到了石頭，怪物發現了你，你只能逃回城鎮去。"
end



