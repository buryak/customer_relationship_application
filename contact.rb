class Contact

	attr_accessor :first_name, :last_name, :email
	attr_reader :id

	def initialize(id, first_name, last_name, email)
		@id = id
		@first_name = first_name
		@last_name = last_name
		@email = email
	end
end