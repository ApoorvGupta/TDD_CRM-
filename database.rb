class Database

	attr_accessor :contacts

	def initialize
		@contacts = []
	end

	def add(contact)
		@contacts << contact
	end

	def delete(contact)
		@contacts.delete(contact)
	end

	def total_contacts 
		@contacts.length
	end

	def display_attribute(attribute)
		results = []
		@contacts.each do |contact| 
		if attribute == "id"
			results << contact.id 
		elsif attribute == "firstname"
			results << contact.firstname
	   	elsif attribute == "lastname"
	   		results << contact.lastname 
		elsif attribute == "email"
			results << contact.email
		elsif attribute = "notes"
			results << contact.notes
			end 	
		end

		results  

	end 
end