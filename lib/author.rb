class Author

  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    Post.all.select {|title| title.author == self}
  end

end
