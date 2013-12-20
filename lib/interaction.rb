#!/usr/bin/env ruby -wKU
#interaction.rb
require_relative "parser.rb"

class Interaction

	private
	def initialize(room)
		command = gets.chomp
		Parser.new.parse(command, room)
	end
end
