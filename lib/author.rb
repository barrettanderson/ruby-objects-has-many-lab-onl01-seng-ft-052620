class Author

  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|title| title.author == self}
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(cat)
    dog = Post.new(cat)
    add_post(dog)
  end

end
