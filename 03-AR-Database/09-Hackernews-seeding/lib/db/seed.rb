require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"


# Seed you database with post data from hacker news
# And fake users using Faker gem

puts "Seeding database..."

#TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users


20.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  User.create!({name: name , email: email})
end

doc = Nokogiri::HTML(open('https://news.ycombinator.com'))


doc.search('table table tr td.title a').each do |element|

  user_id = 1 + rand(20)

  name = element.inner_text
  datetime = Date.new
  source_url = element['href']
  rating = 1 + rand(30)
  user = User.find(user_id)
  Post.create!({name: name, source_url: source_url, rating: rating, user: user})
end