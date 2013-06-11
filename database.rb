class Database

	attr_accessor :contacts

	def initialize
		@contacts = []
	end

	def add(contact)
		@contacts << contact
	end

	def total_contacts 
		@contacts.length
	end
end