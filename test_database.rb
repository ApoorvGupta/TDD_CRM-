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
		#delete a contact from the database 
		@db.add(@contact1)
		@db.add(@contact2)
		@db.delete(@contact1)
		assert_equal (@db.contacts.include? @contact1), false
	end

	def test_display_attribute
 		@db.add(@contact1)
		@db.add(@contact2)

 		assert_equal (@db.display_attribute("id")), ["ID", "1005484654"]
 		assert_equal (@db.display_attribute("firstname")), ["firstname", "Apoorv"]
 		assert_equal (@db.display_attribute("lastname")), ["lastname", "Gupta"]
 		assert_equal (@db.display_attribute("email")), ["email", "abc@frg.com"]
 		assert_equal (@db.display_attribute("notes")), ["notes", "Yeah!"]

	end 

	#def test_modify2
	#	@db.add(@contact2)
	#	@db.modify("firstname", "John")
	#	assert_equal (@db.contacts[0]).firstname, "John"

	#end

	def test_modify
		@db.add(@contact1)
		@db.add(@contact2)

		contact = @db.find("Apoorv")
		@db.modify(contact, "firstname", "John")
		assert_equal @contact2.firstname, "John"
	end
end



