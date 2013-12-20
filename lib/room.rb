#!/usr/bin/env ruby -wKU
#room.rb
require_relative "item.rb"

class Room
	attr_accessor :description
	@directions
	@items

	def initialize(hsh)
		@description = hsh[:description]
		@items = hsh[:items]
		@directions = hsh[:directions]

		puts @description
	end

	def addItems(items)
		if items.respond_to?("each")
			items.each do |item|
				@items.push(item)
			end
		else
			@items.push(items)
		end
	end

	def removeItem(item)
		@items.delete_if{|x| x == item}
	end

	def addDirection(direction)
		@directions.push direction
	end
end
