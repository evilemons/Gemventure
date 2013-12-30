#!/usr/bin/env ruby -wKU
require_relative "lib/gemventure.rb"

shovel = Item.new :description=> 'It is a rusty shovel.', :name=> 'shovel'
bar = Item.new :description=> 'Just a simple gray bar.', :name=> 'bar'

possibleDirections = %w[north n]

initialRoom = Room.new :description=> 'You are in a forest. You see a shovel sticking up out of the ground.
There is a path to the north.', 
						:directions=> possibleDirections, 
						:items=> [shovel, bar]

loop do
	inroomone = Interaction.new initialRoom
	if inroomone == false
		break
	end
end
