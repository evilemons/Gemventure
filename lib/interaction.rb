#!/usr/bin/env ruby -wKU
#interaction.rb

require_relative "parser.rb"

class Interaction
	private
	def initialize(room)
		@@currentRoom = room
		command = gets.chomp
		cd = Parser.parse command
		case cd
		when "examine"
		when "move"
		when "condition"
		end
	end
end
