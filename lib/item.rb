#!/usr/bin/env ruby -wKU

class Item
	attr_accessor :description
	attr_accessor :actions
	attr_accessor :name

	def initialize(name)
		@name = name
	end
		
end
