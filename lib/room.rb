#!/usr/bin/env ruby -wKU
require_relative "item.rb"
require_relative "interaction.rb"

#Constants
Lookarry = ["l", "look"]
Movearry = ["go", "move"]
NilResponce = 'Im sorry, could you speak up?'
NoGoResponce = 'You cannot go that way.'

class Room
	attr_accessor :description
	attr_accessor :directions
	attr_accessor :items
	attr_accessor :connectedRooms

	def initialize(des)
		@description = des
		puts @description
	end

	def addItems(items)
		items.each do |item|
			@items.push item
		end
	end

	def putCommand(command)
		command = command.downcase
		if command == "quit"
			exit
		else
			command = command.split
		end
		#analyze
		cd1 = command.first #first word
		cd2 = command.at(1) #second word
		cd3 = command.at(2) #third word

		if cd1 == nil
			puts NilResponce
		end
		
		if Lookarry.include? cd1 
			#user wants to look
			if cd2 == nil 
				puts @description
			elsif cd2 == "at"
				cd1 = "examine"
				cd2 = cd3
			elsif cd2 == "around"
				puts @description
			else
				puts "I'm sorry, I dont know what you mean by look #{cd2}"
			end
		end
		if Movearry.include? cd1
			#user wants to move, check if it matches available directions
			if cd2 != nil
				if @directions.include? cd2
					puts "You can go that way." #temp
				else
					puts NoGoResponce
				end
			else
				puts "Which way did you want to go?"
			end
		end
		if cd1 == "examine"
			command.delete_if{|x| x == "the"}
			if Lookarry.include? cd2
				puts "You look at the #{cd2}"
			end
		end
	end
end
