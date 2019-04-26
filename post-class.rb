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