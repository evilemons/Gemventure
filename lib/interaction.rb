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
		Parser.new.parse(command, room)
	end
	def colorize(text, color)
		"\e[#{color_code}m#{text}\e[0m"
	end

end
