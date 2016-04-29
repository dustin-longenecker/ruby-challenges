##
#    Create a file in your ruby_challenges folder and title it blog.rb
#    Create a class that will be the blueprint for each ‘BlogPost’ object. This class should set a title, content, a publish date, and maybe even an author for each NEW post. You may want to do this by modifying the initialize method OR you may want you craft your own method, with all the special behaviour in it.
#    use logic to create a prompt saying “do you want to create another blog post? [Y/N]”. If you hit Y the script will run through the questions to add content. If you hit N, you will stop entering content.
#    Hmm, shouldn’t you be practicing inheritance? Create a parent class called something like ‘Blog’, that will keep track of how many blog posts you have created, and what to do with them.
#    Save all blog posts in an array or a hash (you learned about these in lesson 7), in the parent class. Experiment with both. Push every new blog post into said array. Look up ‘Array’ methods in ruby to figure out how this might be possible.
#    Let’s create a variable that will count our blog posts, starting at 0, and a method that will increment with each new blog post created and appended to our array of posts. Should this be an instance variable or a class variable? In what class should this counter be?
#    Create a ‘publish’ method that will output all your blog posts to the terminal Would that be a class or instance method?
#    Make it so that blog posts can have authors

class Blog

  @@all_posts = []
  @@num_posts = 0

  def self.all
    @@all_posts
  end
  def self.add(thing)
      @@all_posts << thing
      @@num_posts += 1
  end
  def self.publish
    @@all_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
end

class BlogPost < Blog
  def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
  end

  def title
    @title
  end

  def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
  end

  def created_at
    @created_at
  end

  def created_at=(created_at)
    @created_at = created_at
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def save
    BlogPost.add(self)
  end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
