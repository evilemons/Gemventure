#!/usr/bin/env ruby -wKU
#item.rb

class Item
	attr_accessor :description
	attr :actions
	attr :name
	
	def initialize(hsh)
		@description = hsh[:description]
		@actions = hsh[:actions]
		@name = hsh[:name]
	end
	
	def addAction(action)
		if action.respond_to?("each") then
			action.each {@actions.push(action)}
		else
			@actions = action
		end
	end
end
