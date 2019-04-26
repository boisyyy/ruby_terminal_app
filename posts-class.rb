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