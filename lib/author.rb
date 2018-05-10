class Author

  @@post_count = 0
  attr_accessor :name


   def initialize(name)
     @name = name
     @posts = []
   end

   def add_post(post)
     @posts << post
     post.author = self
   end

   def add_post_by_name(name)
      post = post.new(name)
      @posts << post
      post.author = self
   end

   def posts
     @posts
   end

   def add_post_by_title(name)
       post = Post.new(name)
       @posts << post
       self.add_post(post)
   end

   def self.post_count
     @@post_count << self
   end


end
