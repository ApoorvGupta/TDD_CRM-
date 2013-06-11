require 'test/unit' 
require_relative 'contact'

class TestContact < Test::Unit::TestCase

	
	def setup 
		@contact = Contact.new("ID", "firstname", "lastname", "email", "notes")
	end

	def test_initialize
		
	#create a new contact passes 
		assert_equal @contact.id, "ID"
		assert_equal @contact.firstname, "firstname"
		assert_equal @contact.lastname, "lastname"
		assert_equal @contact.email, "email"
		assert_equal @contact.notes, "notes"
	end  	


end  


