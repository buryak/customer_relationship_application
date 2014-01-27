require_relative 'contact'
require_relative 'rolodex'

class CRM

	attr_accessor :rolo

	def initialize
		@rolo = Rolodex.new
	end

	def main_menu
		while true
	  	print_main_menu
	  	user_selected = gets.chomp.to_i
	  	call_option(user_selected)
	  	if user_selected == 5
	  		puts "\e[H\e[2J"
	  		puts "Thank you, come again!"
	  		puts ""
	  		break
	  	end
		end
	end

	def print_main_menu
	  	puts "[1] Add a new contact"
	  	puts "[2] Modify an existing contact"
	  	puts "[3] Delete a contact"
	  	puts "[4] Display all the contacts"
	  	puts "[5] Exit"
	  	print "Enter a number: "
	end

	def call_option(user_selected)
		@rolo.add if user_selected == 1
		@rolo.modify_contact if user_selected == 2
		@rolo.delete_contact if user_selected == 3
		@rolo.display_all_contacts if user_selected == 4
	end
end

variable = CRM.new
variable.main_menu
# CRM.main_menu