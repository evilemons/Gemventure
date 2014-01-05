#!/usr/bin/env ruby -wKU
#interaction.rb
require_relative "parser.rb"

class Interaction
	public
	def mkgreen(text); colorize(text, 32);end
	def mkblue(text); colorize(text, 34);end
	def mkred(text); colorize(text, 31);end
	def mkpurple(text); colorize(text, 35);end

	private
	def initialize(room)
		command = gets.chomp
		p = Parser::parse command
		word = p[:word]

		case p[:todo]
			when 'look' #user wants to look
				puts room.description
			when 'examine' #user wants to examine
				room.items.each do |item|
					if word == item.name
						puts item.description
					end
				end
			when 'move' #user wants to move
				#room.directions.each do |direction|
				#	if word == direction ; #needs attention
				#end
			when 'other' #check for other verbs
				totalActions = Array.new
				room.items.each do |item|
					item.actions.each do |action|
						totalActions.push action
					end
				end
				if totalActions.include? word
					#analyse action
				else
					puts "I\'m sorry, I don\'t know the verb: #{p[:word]}."
				end
			when 'take' #check if item is available to pick up, #if so, put it in the inventory

			when 'drop' #check if item is in inventory to drop, #if so, drop it in the current room
				
		end
	end
	
	def colorize(text, color)
		"\e[#{color_code}m#{text}\e[0m"
	end

end
