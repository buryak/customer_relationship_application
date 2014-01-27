class Rolodex

	def initialize
		@contacts = []
		@id = 1000
	end

	def display_contact(contact)
		puts "Id: #{contact.id} | First name: #{contact.first_name} | Last name: #{contact.last_name} | Email: #{contact.email}"
	end

	def add
		print "Enter first name: "
		first_name = gets.chomp
		print "Enter last name: "
		last_name = gets.chomp
		print "Enter email: "
		email = gets.chomp
		@id +=1
		contact = Contact.new(@id, first_name, last_name, email)
		@contacts << contact
		display_contact(contact)
		sleep 5
		puts "\e[H\e[2J"
	end

	def modify_contact
		print "Enter id of contact to modify: "
		user_id_to_mod = gets.chomp.to_i
		@contacts.each do |contact|
			if contact.id == user_id_to_mod
				print "Enter first name: "
				contact.first_name = gets.chomp
				print "Enter last name: "
				contact.last_name = gets.chomp
				print "Enter email: "
				contact.email = gets.chomp
				puts "Contact updated."
				display_contact(contact)
				sleep 5
				puts "\e[H\e[2J"
			end
		end
	end

	def display_all_contacts
		@contacts.each do |contact|
			display_contact(contact)
		end
		sleep 5
		puts "\e[H\e[2J"
	end

	def display_particular_contact
		print "Enter id of contact to display: "
		user_id_to_display = gets.chomp.to_i
		@contacts.each do |contact|
			if contact.id == user_id_to_display
				display_contact(contact)
			end
		end
	end

	def delete_contact
		print "Enter id of contact to delete: "
		user_id_to_delete = gets.chomp.to_i
		@contacts.each do |contact|
			if contact.id == user_id_to_delete
				@contacts.delete(contact)
			end
		end
		puts "Contact deleted."
		display_all_contacts
	end


end