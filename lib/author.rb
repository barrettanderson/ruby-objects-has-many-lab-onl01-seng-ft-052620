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

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(post)
  end

end
