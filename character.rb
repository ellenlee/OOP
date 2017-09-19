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