# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#  cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.create([{title: "new post"}, {content: "some words"}])
category = Category.create(name: "category 1")
post_category = PostCategory.create(post_id: 1, category_id: 1)
