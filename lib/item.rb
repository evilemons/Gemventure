#!/usr/bin/env ruby -wKU
#item.rb

class Item
	attr_accessor :description
	attr_accessor :actions
	attr_accessor :name

	private
	def initialize(name)
		@name = name
	end
		
end
