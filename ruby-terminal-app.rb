#Requiring the class files
require 'io/console'
require_relative 'classes.rb'
require_relative 'methods.rb'
require 'terminal-table'
# require_relative 'login-class.rb'


#Creating an array to hold user post data
post_history = Posts.new
# seed the post data
seed_post_data(post_history)
#Creating an array of hasshes to hold user data
username = ""
password = ""

##Giving the option to either login or sign up
puts "press 1 to login press 2 to sign up press 3 to quit"
option = gets.to_i

#Login option
if option == 1
    puts "please enter your username"
    name = gets.chomp
    username = name
    puts "Please enter your password"
    password = gets.chomp
    login = Login.new(username, password)
#Signup option
elsif option == 2
    puts "please enter a username"
    name = gets.chomp
    username << name
    puts "Please enter a password"
    password = gets.chomp
    signup = Signup.new(username, password)
#Quit option
else
    puts "Goodbye"
    abort
end

help
# nav
action = gets.strip.downcase
while action != "quit" and action != "q" do
    if action == "new_post"
        #Saves the post to the user post history
        post = new_post(username)
        if (post)
            post_history.add_post(post)
        end
        home(post_history)
    elsif action == "quit" or action == "q"
        puts "Goodbye"
    else
        puts
        home(post_history)
    end
    help
    # nav
    action = gets.strip.downcase
end