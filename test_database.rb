require 'test/unit'
require_relative 'database'
require_relative 'contact'

class TestDatabase < Test::Unit::TestCase
	def setup
		@db = Database.new
		@contact = Contact.new("ID", "firstname", "lastname", "email", "notes")
	end

	def test_add
		#testing to if add works 
		@db.add(@contact)
		assert_equal (@db.contacts.include? @contact), true
	end

	def test_total_contacts
		#check total contacts in the database 
		@db.add(@contact)
		assert_equal @db.total_contacts, 1
	end


end



