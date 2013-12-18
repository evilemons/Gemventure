#!/usr/bin/env ruby -wKU
require_relative "lib/gemventure.rb"

shovel = Item.new
shovel.description = 'It is a rusty shovel.'

forest = 'You are in a forest. You see a shovel sticking up out of the ground. 
There is a path to the north.'
possibleDirections = ["north", "n"]

initialRoom = Room.new forest
initialRoom.directions = possibleDirections
initialRoom.addItems(["shovel"])

while true
	$stdout.flush
	command = gets.chomp
	initialRoom.putCommand(command)
end
