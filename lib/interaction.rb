#!/usr/bin/env ruby -wKU

class Interaction
	@@currentRoom = ""
	def initialize(room)
		@@currentRoom = room
		command = gets.chomp
		@@currentRoom.putCommand command
	end
end
