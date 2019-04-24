def help
    puts "\e[H\e[2J"
    puts "new_post: Make a new post"
    puts "home: takes you to the home page"
    puts "(h)elp: Shows this page"
end

def home
    usernames = ["G0ste", "proxy", "Doughnut", "boisy", "booTV", "Vivecuero"]
    posts = ["asdfghjkl", "qwerty", "sdfghjkl", "sdftgyhui", "dcfgvbh", "ytcgvhbkj"]
    puts "\e[H\e[2J"
    5.times do
    puts usernames.shuffle.pop
    puts posts.shuffle.pop
    end
end

def new_post
    puts "\e[H\e[2J"
    puts "Make a new post? Type your post to continue or enter (c)ancel to go back"
    #Creating a new post
    content = gets.chomp
    post = Post.new(content)
   
    #Have to figure out how to place the current date (not going to worry about time, too complicated)
    puts "Doughnut 24/04/19"
    puts post
    if (content.downcase == "c" or content.downcase == "cancel")
        puts "Ok! Goodbye."
        return
    end
    return post
end