class Character

	def initialize name
		@name = name
		@hp = 40
		@speed = 3
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

@erica = Character.new 'Erica'

loc = 0
count = 0

while( loc < 10 )
  puts 'Erica run for ' + @erica.move.to_s
  loc += @erica.move
  count += 1
end

puts "恭喜 #{@erica.get_name} 花了 #{count} 步抵達迷霧山莊了"

loc = 0
count = 0
slice = 0

while( loc < 10 )
  puts 'Erica run for ' + @erica.move.to_s
  loc += @erica.move
  count += 1
end

puts "恭喜 #{@erica.get_name} 花了 #{count} 步抵達迷霧山莊了"

