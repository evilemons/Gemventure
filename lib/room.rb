#!/usr/bin/env ruby -wKU
require_relative "utils.rb"

#Constants
$Lookarry = ["l", "look"]
$Movearry = ["go", "move"]

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
		cd1 = command.first #first word
		cd2 = command.at(1) #second word
		
		if $Lookarry.include? cd1 
			#user wants to look
			if cd2 == nil 
				puts @description
			elsif cd2 == "at"
				cd1 = "examine"
			end
		end
		if $Movearry.include? cd1
			#user wants to move, check if it matches available directions
			if cd2 != nil
				if @directions.include? cd2
					puts "You can go that way." #temp
				else
					puts "You cannot go that way." #temp
				end
			else
				puts "Which way did you want to go?"
			end
		end
		
	end
end
		
#debug
forest = "You are in a forest. You see a path to the norh."
posdi = ["north"]
roomA = Room.new forest
roomA.directions = posdi


#main loop example
while true
	$stdout.flush
	command = gets.chomp
	roomA.putcommand(command)
end