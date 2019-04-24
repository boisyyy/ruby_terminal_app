#getting stuff
require 'io/console'
require 'yaml'


/
#The first thing a user sees, make sure it welcomes them and asks them to register
#The user should be able to use commands "Register" and "Login" to switch between classes
#If they register replace account and go through register prompts
#
Class Registration
    attr_

Class Login
    attr_

Class Front
    attr
/

#Hello screen, the puts with the equal signs and the blank puts are for formatting reasons
puts "++==============================================================++"
p "Hello and welcome to the Microblog!"
puts 
#Giving the user the options of Registering, logging in and quitting
#Probably make this a method or class or something

# creating variable nav to class user navigate
nav = class UserNavigate
    def navigation
        p "What would you like to do? (1) Register, (2) Login, (3) Quit"
        puts "++==============================================================++"    
        #Getting the users input and converting them to integers
        puts
    end
end
#clears the screen after an option has been chosen
puts "\e[H\e[2J"
#cases 


# register 
    when input = 1 
        register = register.new(username, password)
    end
# login
    when 2
        puts "login"
   
# quit
    when 3

# error
    else
        puts "error"
end
#user input prompt
p "If you wish to close the program, type 'quit'"
puts "==========================================="

# create a class for the user using his registered information
#if its a success continue here

#Welcome