#!/usr/bin/env ruby -wKU
require_relative "lib/gemventure.rb"

shovel = Item.new "shovel"
shovel.description = 'It is a rusty shovel.'

bar = Item.new "bar"
bar.description = 'It\'s gray'

forest = 'You are in a forest. You see a shovel sticking up out of the ground. 
There is a path to the north.'
possibleDirections = ["north", "n"]

initialRoom = Room.new forest
initialRoom.directions = possibleDirections
initialRoom.addItems([shovel, bar])

loop do
	inroomone = Interaction.new(initialRoom)
	if inroomone == false
		break
	end
end
