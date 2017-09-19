class Character
  attr_accessor :name,:speed,:strength

  BALANCE = 20
  @@Characterno = 0

  def initialize(strength,name)
    @name = name
    @hp = 40
    @speed = 3
    @strength = strength
    @@Characterno += 1
  end

  def attack
    return strength
  end

  def defend strength
    @hp = @hp - strength
    status
  end

  def move
    return @speed * 1.5
  end

  def is_balance
    if (self.strength + self.speed) > BALANCE
      return false
    else
      return true
    end
  end

  def still_can_run
    return @stamina > 0
  end

  def is_defeated
    return @hp <= 1
  end

  private
  def status
    puts "#{@name} 的生命值： #{@hp} "
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
@cc = Character.new(strength,"Arch")
@monster = Character.new(13,"怪物")

if !@cc.is_balance
  abort "力量和速度總和不可以超過 20 ... 實力超過的話應該去魔王城，而不是迷霧森林了..."
end

puts "你的冒險者 #{@cc.name} 抵達迷霧森林，眼前出現了一隻怪物，請問他該怎麼做？"
puts "1 當然是直接打趴它"
puts "2 神不知鬼不覺地繞過"
puts "選擇打趴它，請輸入 1 ；選擇閃過它，請輸入 2 "

decision = gets.chomp.to_i

win = 0

if decision == 1
  ans = @cc.strength > @monster.strength
  if ans
    while( true )
      if @monster.is_defeated
        win = 1
        break
      end

      if @cc.is_defeated
        win = 2
        break
      end
      @monster.defend(@cc.strength)
      @cc.defend(@monster.strength)
    end
  else
    abort "你的力量太弱了，連怪物的一拳都抵擋不了，交手瞬間被揍飛。"
  end
elsif decision == 2
  if @cc.move > 20
    abort "一眨眼，#{@cc.name} 像風一樣越過了怪物，怪物似乎察覺到動靜，但轉頭時已不見人影。"
  else
    abort "#{@cc.name} 的速度太慢了，馬上被怪物逮到，只能落得落荒而逃。"
  end
else
  abort "你猶豫不決的期間，不小心踢到了石頭跌倒，把兵器搞丟了，還讓怪物發現了你，你只能逃回城鎮去。"
end

if( win == 1 )
  abort "#{@cc.name} 的劍最終貫穿怪物的身體，這場戰鬥終於落下帷幕了。"
else
  abort "#{@cc.name} 很勉強地穩住陣腳，但身體所受的傷害已經太重，只能落荒而逃。"
end

