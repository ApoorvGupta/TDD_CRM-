require 'test/unit'
require_relative 'database'
require_relative 'contact'

class TestDatabase < Test::Unit::TestCase
	def setup
		@db = Database.new
		@contact1 = Contact.new("ID", "firstname", "lastname", "email", "notes")
		@contact2 = Contact.new("1005484654", "Apoorv", "Gupta", "abc@frg.com", "Yeah!")
	end

	def test_add_one_contact
		#testing to if add works 
		@db.add(@contact1)
		assert_equal (@db.contacts.include? @contact1), true
	end

	def test_total_contacts
		#check total contacts in the database 
		@db.add(@contact1)
		@db.add(@contact2)
		assert_equal @db.total_contacts, 2
	end

	def test_delete_one_contact
		@db.add(@contact1)
		@db.add(@contact2)
		@db.delete(@contact1)
		assert_equal (@db.contacts.include? @contact1), false
	end


end



