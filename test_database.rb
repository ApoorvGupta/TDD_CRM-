require 'test/unit'
require_relative 'database'
require_relative 'contact'

class TestDatabase < Test::Unit::TestCase
	def setup
		@db = Database.new
		@contact = Contact.new("ID", "firstname", "lastname", "email", "notes")
	end

	def test_add
		@db.add(@contact)
		assert_equal (@db.contacts.include? @contact), true
	end
end