#!/usr/bin/env ruby -wKU
require_relative "item.rb"

#Constants
$Lookarry = ["l", "look"]
$Movearry = ["go", "move"]
$NilResponce = "I'm sorry, could you speak up?"

class Room
	attr_accessor :description
	attr_accessor :directions
	attr_accessor :items

	def initialize(des)
		@description = des
		puts @description
	end

	def putcommand(command)
		command = command.downcase; command = command.split
		#analyse
		cd1 = command.first #first word
		cd2 = command.at(1) #second word
		cd3 = command.at(2) #third word

		if cd1 == nil
			puts $NilResponce
		end
		
		if $Lookarry.include? cd1 
			#user wants to look
			if cd2 == nil 
				puts @description
			elsif cd2 == "at"
				cd1 = "examine"
				cd2 = cd3
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
		if cd1 == "examine"
			puts "You look at the #{cd2}"
		end
	end
end

shovel = Item.new
shovel.description = "The shovel is rusty."


#debug
forest = "You are in a forest. You see a path to the norh. There is a shovel lieing on the ground."
posdi = ["north"]
roomA = Room.new forest
roomA.directions = posdi


#main loop example
while true
	$stdout.flush
	command = gets.chomp
	roomA.putcommand(command)
end