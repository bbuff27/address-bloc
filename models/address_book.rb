require_relative "entry"
require "csv"

class AddressBook
	
	attr_reader :entries

	def initialize
		@entries = []
	end

	def add_entry(name,phone_number,email)
		index = 0
		entries.each do |entry|
			if name < entry.name
				break
			end
			index += 1
		end
		entries.insert(index, Entry.new(name,phone_number,email))
	end

	def remove_entry(name,phone_number,email)
		entries.each do |entry|
			if name == entry.name && phone_number == entry.phone_number && email == entry.email
				entries.delete(entry)
			end
		end
	end

	def import_from_csv
	
	end

end