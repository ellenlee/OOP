class Character
  attr_accessor :name

  def initialize(name)
    @name = name
    puts "你創造了一個新冒險者！"
  end

  # def get_name
  #   @name
  # end
end

puts "請問你的冒險者名稱？"
charname = gets.chomp
@yourchar = Character.new(charname)
puts "你的冒險者 #{@yourchar.name} 準備出發去迷霧山莊了！"
