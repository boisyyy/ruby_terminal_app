require 'terminal-table'
class Post
    #initialising the class with the required data
    attr_reader :username, :time, :content
    def initialize (username,time,content)
        @username = username
        @content = content
        @time = time
    end

#redifining the to_s method so that the posts display correctly
    def to_s
        return @content
    end
end

class Posts
    attr_reader :posts
    def initialize
        @posts = []
    end
    def add_post(post)
        # Add a post to the array of posts. 
        # Add to the front so most recent posts can be displayed first.
        @posts.unshift(post)
    end
end


class Login
    def initialize (username, password)
        @username = username
        @password = password
    end
end

class Signup
    def initialize (username, password)
        @username = username
        @password = password
    end
end