require_relative 'config/application'
require_relative 'app/models/user'
require_relative 'app/models/post'
require_relative 'app/controllers/users_controller'
require_relative 'app/controllers/posts_controller'

#TODO: that's the entry point of your app.
users_controller = UsersController.new
posts_controller = PostsController.new


def ask_and_get(param)
  puts "What's the #{param} of the article?"
  gets.chomp
end

puts "Welcome on LeWagonNews!"
user = false
until user
  puts " Are you already a member ? y/n"
  choice = gets.chomp.downcase
  if choice == "n"
    puts "What's your name?"
    name = gets.chomp
    puts "What's your email?"
    email = gets.chomp

    user = users_controller.create(name, email)
    if not user.valid?
      puts user.errors.full_messages
      user = false
      redo
    end

  elsif choice == "y"
    puts "What's your name?"
    name = gets.chomp
    puts "What's your email?"
    email = gets.chomp

    user = users_controller.login(name, email)
    puts "login error" unless user
  end
end

puts "Welcome #{user.name}!"
programme_running = true
while programme_running

  puts "***********************"
  puts "What do you want to do?"
  puts "1. See all posts (list_<filter>) filter = by_date or by_ratings"
  puts "2. Vote for a post (vote_<post_id_>)"
  puts "3. See your posts (me)"
  puts "4. Submit a new post (add)"
  puts "5. Delete a post (del)"
  puts "6. exit (exit)"

  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Do you want to order your posts"
    puts "1-by date?"
    puts "2-by ratings?"
    choice = gets.chomp.to_i
    case choice
    when 1
     posts_controller.all.each do |post|
      puts post
    end
    when 2
      posts_controller.all(order_attr: 'rating').each do |post|
        puts post
      end
    else
      puts "Sorry, I didn't understand your choice!"
    end
  when 2
    puts "What is the id of the post you want to vote for ?"
    id = gets.chomp.to_i
    if posts_controller.vote_for(id)
      puts "Your vote has been registered!"
    else
      puts "Sorry it's not the good ID"
    end

  when 3
    user.posts.each do |post|
      puts post
    end
  when 4
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = posts_controller.create(name, source_url, rating, user)
    if post.valid?
      puts "Your article #{name.upcase} has sucessfully been added!"
    else
      puts "Post non valid! #{post.errors.full_messages}"
    end

  when 5
    puts "What is the id of the post you want to delete ?"
    id = gets.chomp.to_i

    if posts_controller.delete(id)
      puts "your post has been deleted"
    else
      puts "invalid post id"
    end

  when 6
    programme_running = false
  else
    puts "Sorry, I didn't understand your choice"
  end
end
exit