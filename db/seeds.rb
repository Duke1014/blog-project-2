# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


100.times do
    username = Faker::Internet.username
    password = Faker::Internet.password
    user = User.create!(username: username, password: password)
    10.times do 
        title = Faker::Lorem.sentence
        content = Faker::Lorem.paragraph
        date = Faker::Date.between(from: '2014-09-23', to: Date.today)
        blog = user.blogs.create!(title: title, content: content, published_on: date)
        4.times do
            comment_content = Faker::Lorem.paragraph
            comment_date = Faker::Date.between(from: '2014-09-23', to: Date.today)
            comment = user.comments.create!(content: comment_content, published_on: comment_date, blog_id: blog.id)
        end
    end
end