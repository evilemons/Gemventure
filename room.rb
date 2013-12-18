#!/usr/bin/env ruby -wKU

class Room
	attr_accessor :description
	attr_accessor :directions
	
	def initialize(description)
		@description = description
		puts @description;
	end

	def putcommand(command)
		command = command.downcase; command = command.split
		#analyse
		cd1 = command.at(0) #first word
		cd2 = command.at(1) #second word
		
		case cd1
		when "look"
			puts @description
		when "l"
			puts @description
		when "go"
			puts "I can't do anything yet!"
		when "move"
			puts "I can't do anything yet!"
		when "examine"
			puts "I can't do anything yet!"
		end
	end
end
		

forest = "You are in a forest. You see a path to the norh."
posdi = ["North"]
roomA = Room.new forest
roomA.directions = posdi


#main loop example
while true
	$stdout.flush
	command = gets.chomp
	roomA.putcommand(command)
end