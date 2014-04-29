require_relative '../models/post'

class PostsController

  def all(options = {})
    options = { order_attr: 'date', order_dir: 'DESC' }.merge(options)
    Post.all.order("#{options[:order_attr]} #{options[:order_dir]}")
  end

  def vote_for(id)
    post = Post.find_by(id)
    return false if post.nil?
    post.rating += 1
    post.save ? true : false
  end

  def create(name, source_url, rating, user)
    Post.create({name: name, source_url: source_url, date: Time.now, rating: rating, user: user })
  end

  def delete(id)
    Post.destroy(id)
    true
  rescue
    false
  end


end
