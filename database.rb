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

	#def modify2(attribute, modification)

	#	@contacts.each do |contact|
	#			contact.send(attribute + "=", modification)
	#	end
	#end

	def modify(contact, attribute, modification)
		@contacts.each do |profile|
			if profile == contact
				contact.send(attribute + "=", modification)
				break
			end
		end
	end

	def find(detail)

		@contacts.each do |contact|
			if (contact.firstname).include? (detail)
				return contact
			elsif (contact.lastname).include? (detail)
				return contact
			elsif (contact.email).include? (detail)
				return contact
			elsif (contact.notes).include? (detail)
				return contact
			end
		end
	end


end