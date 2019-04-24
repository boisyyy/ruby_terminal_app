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