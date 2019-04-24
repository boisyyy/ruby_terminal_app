#Requiring the class files
require_relative 'post-class.rb'
require_relative 'login-class.rb'

#Creating an array to hold user post data
post_history = []
3#Creating an array of hasshes to hold user data
# users = [{}]

##Giving the option to either login or sign up
# puts "press 1 to login press 2 to sign up press 3 to quit"
# option = gets.to_i

##Login option
# if option == 1
#     puts "please enter your username"
#     username = gets.chomp
#     puts "Please enter your password"
#     password = gets.chomp
#     login = Login.new (username, password)
##Signup option
# elsif option == 2
#     puts "please enter a username"
#     username = gets.chomp
#     puts "Please enter a password"
#     password = gets.chomp
#     signup = Signup.new (username, password)
#     users << signup
##Quit option
# else
#     puts "Goodbye"
#     abort
# end



puts "Make a new post? Type your post to continue or enter (c)ancel to go back"
#Creating a new post
content = gets.chomp
if (content.downcase == "c" or content.downcase == "cancel")
    puts "Ok! Goodbye."
    return
end

post = Post.new(content)
#Saves the post to the user post history
post_history << post
#Have to figure out how to place the current date (not going to worry about time, too complicated)
puts "Doughnut 24/04/19"
puts post

