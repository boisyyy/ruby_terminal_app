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

        p "What would you like to do? (1) Register, (2) Login, (3) Quit"
        puts "++==============================================================++"    
        #Getting the users input and converting them to integers
        option = gets.to_i
        puts


/ options /
#clears the screen after an option has been chosen
puts "\e[H\e[2J"
#cases 
case option

when 1
    / register /
        #Register username
        puts "++===========================================++"
        puts "The Microblog"
        puts
        p "You are at the registration screen!"
        puts
        p "Insert a Username now!"
        puts
        puts "Username:"
        input = gets.chomp.capitalize.to_s 
        puts
        # creating variable 'username' from user input
        username = input


    #Create Password
    
        puts "Hi #{input}, please create a password!"
        puts
        puts "Password:"
        password = []
        input = STDIN.noecho(&:gets).chomp
        password = input
        puts "********"
        puts "Password valid!"
        puts
    

        puts "Registration successful!"
        
        

    when 2
        / login / 
        puts "==========================================="
        puts "Welcome to the Login screen!"
        puts "What is your Username?"
        input = gets.chomp
        # change the if input is to either check for a file username
        #or if time runs out specify the username here
        if input == "a"
            puts "Password"
            input = STDIN.noecho(&:gets).chomp
            if input != "a"
                puts "wrong password"
            end
        end
    
        if input != "a"
            puts "Invalid Username"
        end


when 3
    / quit /
        puts "                              +=+===========+=+"
        puts "                                Goodbye user!!"
        puts "                              +=+===========+=+"
        exit
        exit!
        abort("Goodbye!")
else
    /error/
    puts "error"
end
#user input prompt
p "type 'login' to login to your new account"
p "type 'register' to register a different/new account"
p "type 'quit' to terminate the program"
puts "==========================================="

# create a class for the user using his registered information
#if its a success continue here

#Welcome