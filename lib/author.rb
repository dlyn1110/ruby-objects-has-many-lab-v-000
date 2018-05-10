class Author

  @@post_count = 0
  attr_accessor :name
  attr_reader :posts


   def initialize(name)
     @name = name
     @posts = []
   end

   def add_post(post)
     @@posts_count += 1
     post.author = self
   end

   def add_post_by_title(title)
       post = Post.new(title)
       self.add_post(post)
   end

   def add_post_by_name(name)
      post = post.new(name)
      @posts << post
      post.author = self
   end




   def self.post_count
     @@post_count
   end


end
