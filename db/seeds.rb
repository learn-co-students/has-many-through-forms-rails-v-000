# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: "This is a Post", content: "This is the content of a post. I am writing stuff to see what it looks like.")
Post.create(title: "This is another Post", content: "This is the content of a post. I am writing stuff to see what it looks like.")
Post.create(title: "This is a Third Post", content: "This is the content of a post. I am writing stuff to see what it looks like.")

User.create(username: "User1", email: "user1@email.com")
User.create(username: "User2", email: "user2@email.com")
User.create(username: "User3", email: "user3@email.com")

Category.create(name: "Education")
Category.create(name: "Science")
Category.create(name: "Cooking")

PostCategory.create(post_id: 1, category_id: 1)
PostCategory.create(post_id: 2, category_id: 2)
PostCategory.create(post_id:3, category_id:3)

Comment.create(user_id: 1, post_id: 2, content: "Great post!")
Comment.create(user_id: 2, post_id: 3, content: "Awesome job!")
Comment.create(user_id: 3, post_id: 1, content: "You rock!")