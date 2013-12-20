#!/usr/bin/env ruby -wKU
require_relative "lib/gemventure.rb"

shovel = Item.new (description: 'It is a rusty shovel.', 
				   name: 'shovel')
bar = Item.new (description: 'It\'s just a simple gray bar.', 
				   name: 'bar')

Forest = 'You are in a forest. You see a shovel sticking up out of the ground. 
There is a path to the north.'
possibleDirections = ["north", "n"]

initialRoom = Room.new (description: forest, 
						directions: possibleDirections, 
						items: [shovel, bar])

loop do
	inroomone = Interaction.new(initialRoom)
	if inroomone == false
		break
	end
end
