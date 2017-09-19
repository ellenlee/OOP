class Character

  def initialize(name)
    @name = name
    puts "你創造了一個新冒險者！"
    puts "你的冒險者 #{@name} 準備出發去迷霧山莊了！"
  end

end

@yourchar = Character.new("Ellen")
