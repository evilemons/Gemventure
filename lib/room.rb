#!/usr/bin/env ruby -wKU
#room.rb

require_relative "item.rb"

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
		@items = []
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

	def addDirection
		
	end
end
