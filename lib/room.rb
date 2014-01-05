#!/usr/bin/env ruby -wKU
#room.rb
require_relative "item.rb"

class Room
	attr_accessor :description
	attr :directions
	attr :items

	def initialize(hsh)
		@description = hsh[:description]
		@items = hsh[:items]
		@directions = hsh[:directions]

		puts @description
	end

	def addItem(item)
		if item.respond_to? "each" then
			item.each do |x|
				@items.push x
			end
		else
			@items.push items
		end
	end

	def removeItem(item)
		if item.respond_to? "each" then
			item.each do |x|
				@item.delete x
			end
		else
		@items.delete item
		end
	end

	def addDirection(direction)
		@directions.push direction
	end
end
