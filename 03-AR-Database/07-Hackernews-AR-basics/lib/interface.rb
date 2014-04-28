require_relative 'config/application'
require_relative 'models/post'

def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    #TODO: use ActiveRecord to add a new entry to the DB
    #soit on passe en:
    Post.create!(post)
    #soit on passe en:
    #variable = Post.new(post)
    #variable.save!

  when 2
    #TODO: use ActiveRecord to get all entries from the DB
    Post.all.each{|post| puts "Name: #{post.name}, Source: #{post.source_url}, date: #{post.date}, rating: #{post.rating}"}

  when 3
    #TODO: use ActiveRecord to delete all entries from the DB
    Post.delete_all
  when 4
    break
	end

end