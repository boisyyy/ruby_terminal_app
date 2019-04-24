class Post
    #initialising the class with the required data
    def initialize (content)
        @content = content
    end
#redifining the to_s method so that the posts display correctly
    def to_s
        return @content
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