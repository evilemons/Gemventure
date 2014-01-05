#!/usr/bin/env ruby -wKU
#inventory.rb

class Inventory
	attr :items

	public
	def self.addItem(item)
		if item.respond_to? "each" then
			item.each {|x| @@items.push x}
		else
			@@items.push item
		end
	end
	def dropItem(item); items.delete item; end
end
