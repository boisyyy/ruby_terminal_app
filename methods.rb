require 'terminal-table'
def help
    # puts "\e[H\e[2J"
    puts "What would you like to do?"
    puts "new_post:    Make a new post"
    puts "    home:    Takes you to the home page"
    puts "  (h)elp:    Shows this page"
    puts "       q:    Exits the program"
end

def seed_post_data(post_history)
    # Adds some random post data so we have something to display on start
    usernames = ["G0ste:", "proxy:", "Doughnut:", "boisy:", "booTV:", "Vivecuero:"]
    posts = ["Alien: Take me to your leader
Me: Uh, I am the leader
Alien: Oh, chill. Anywa-
Me: Why didn't you think I was the leader?
Alien: No no-
Me: Why?", "Internet not working quick fix -edited

        Wait, this isn't google.", "I should do my homework but that's exactly what the government wants and I can't let them win... Not again.", "Are you a nightmare at all times or just before the coffee kicks in?", "I wonder if superman ever put glasses on lois lanes dog and she was like: 'I've never seen this dog in my life is this a new dog?'", "Please don't pick up, please don't pick up, please don't pick up.
    
-- How I feel any time I need to make a phone call."]
    
    # time.inspect
    
    5.times do
        time = Time.new
        username = usernames.shuffle.pop
        content = posts.shuffle.pop
        post_history.add_post(Post.new(username,time,content))
    end
    
end

def home(post_history)
    # Display all of the posts with most recent first
    rows = []
    post_history.posts.each do |post|
        rows << ["#{post.username}   #{post.time.day.to_s}/#{post.time.month.to_s}/#{post.time.year.to_s}"]
        rows << [post.content]
        rows << :separator
    end
    
    table = Terminal::Table.new :title => "Quantumblur", :rows => rows
    puts "\e[H\e[2J"
    puts table
end



def new_post(username)
    puts "\e[H\e[2J"
    puts "Make a new post? Type your post to continue or enter (c)ancel to go back"
    #Creating a new post
    content = gets.chomp   
    post = nil
    #Have to figure out how to place the current date (not going to worry about time, too complicated)
    if (content.downcase == "c" or content.downcase == "cancel")
        puts "New post cancelled, redirecting to Home"
        # home
        # help
        return
    else
        time = Time.new
        post = Post.new(username,time,content)
    end
    return post
end

def menu
    table = Terminal::Table.new do |t|
        t << ['               Welcome to Quantumblur
    Press 1 to login press 2 to sign up press 3 to quit']
      end
    puts table
    option = gets.to_i
    
    if option == 1
        puts "Please enter your username:"
        name = gets.chomp
        username = name
        puts "Please enter your password:"
        password = gets.chomp
        login = Login.new(username, password)
    #Signup option
    elsif option == 2
        puts "Please enter a username:"
        name = gets.chomp
        username << name
        puts "Please enter a password:"
        password = gets.chomp
        signup = Signup.new(username, password)
    #Quit option
    else
        puts "Goodbye"
        abort
    end
end