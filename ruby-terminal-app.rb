#Requiring the class files
require 'io/console'
require_relative 'post-class.rb'
require_relative 'posts-class.rb'
require_relative 'login-class.rb'
require_relative 'signup-class.rb'
require_relative 'methods.rb'
require 'terminal-table'
# require_relative 'login-class.rb'


#Creating an array to hold user post data
post_history = Posts.new
# seed the post data
seed_post_data(post_history)
#Creating variables to be used later by the methods and classes that call upon usernames and passwords
username = ""
password = ""

# #Giving the option to either login or sign up
menu

puts "\e[H\e[2J"
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