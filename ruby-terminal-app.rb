#Requiring the class files
require 'io/console'
require_relative 'post-class(sam).rb'
require_relative 'methods.rb'
# require_relative 'login-class.rb'


#Creating an array to hold user post data
post_history = []
#Creating an array of hasshes to hold user data
users = []

##Giving the option to either login or sign up
puts "press 1 to login press 2 to sign up press 3 to quit"
option = gets.to_i

#Login option
if option == 1
    puts "please enter your username"
    username = gets.chomp
    puts "Please enter your password"
    password = gets.chomp
    login = Login.new(username, password)
    users << login
#Signup option
elsif option == 2
    puts "please enter a username"
    username = gets.chomp
    puts "Please enter a password"
    password = gets.chomp
    signup = Signup.new(username, password)
    users << signup
#Quit option
else
    puts "Goodbye"
    abort
end

puts "What would you like to do?"
help
action = gets.strip.downcase
if action == "new_post"
     #Saves the post to the user post history
     post_history << new_post
elsif action == "home"
    home
elsif action == "help"
    help
else
    puts "error"
end