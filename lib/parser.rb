#!/usr/bin/env ruby -wKU
#parser.rb

#Constants
Lookarry = ["l", "look"]
Movearry = ["go", "move"]
NilResponce = 'Im sorry, could you speak up?'
NoGoResponce = 'You cannot go that way.'
NilGoResponce = 'Which way did you want to go?'

class Parser
	public
	def parse(command, currentRoom)
		command = command.downcase
		if command == 'quit'
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
				puts currentRoom.description
			elsif cd2 == 'at'
				cd1 = 'examine'
				cd2 = cd3
			elsif cd2 == 'around'
				puts currentRoom.description
			else
				puts "I'm sorry, I dont know what you mean by look #{cd2}"
			end
		end
		if Movearry.include? cd1
			#user wants to move, check if it matches available directions
			if cd2 != nil
				if currentRoom.directions.include? cd2
					puts 'You can go that way.' #temp
				else
					puts NoGoResponce
				end
			else
				puts NilGoResponce
			end
		end
		if cd1 == 'examine'
			command.delete_if{|x| x == 'the'}

			needPass = true
			currentRoom.items.each do |item|
				if item.name == cd2
					puts item.description
					needPass = false
					break
				end
			end
			if needPass
				if cd2 == nil
					puts 'Examine what?'
				else
					puts "There is no #{cd2}"
					return
				end
			end
		end
	end
end