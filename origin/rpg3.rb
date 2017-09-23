load 'character.rb'

class Warrior < Character

  JOB = "Warrior"
  attr_accessor :JOB


  def initialize(strength,name)
    super(strength,name)
  end

  def attack
    status
    return strength * 2
  end
end

class Mage < Character
  
  JOB = "Mage"
  attr_accessor :JOB

  def initialize(strength,name)
    super(strength,name)
    @magic = 100
    @mp = 3
  end

  def attack
    status
    if @mp > 0
      @mp = @mp - 1
      return magic
    else
      return strength
    end
  end

  def status
    puts "#{self.name} 的生命值： #{self.hp} - 魔力： #{self.mp}"
  end
end

@cc = Warrior.new(13,"Arch")
@mage = Mage.new(4,"Maria")

puts "你遇到了一位同為冒險者的 #{@mage.name}！她是一位 #{Mage::JOB} ！"
puts "你們達成協議一起闖迷霧森林，於是一起踏上旅程"

@boss = Character.new(13,"史瑞克")
@creep1 = Character.new(2,"綠色小綠人")

@heros = [@cc,@mage]

