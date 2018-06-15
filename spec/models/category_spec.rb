require 'rails_helper'

RSpec.describe Category, type: :model do
   before do
     post_1 = Post.create(title: "First Post Ever", content: "This is my first post!")
     post_2 = Post.create(title: "Second Post", content: "Yet another post. Why?")
     @post_3 = Post.create(title: "Guess what?!", content: "I wrote this spec!")

     @cat_1 = Category.create(name: "Exciting")
     cat_2 = Category.create(name: "Meh")

     PostCategory.create(post: post_1, category: @cat_1)
     PostCategory.create(post: post_2, category: cat_2)
     PostCategory.create(post: @post_3, category: @cat_1)
   end
  it "has a name" do
    expect(@cat_1.name).to eq("Exciting")
  end

  it 'has many posts through post_categories' do
    expect(@cat_1.posts).to include(@post_3)
    expect(@cat_1.posts.count).to eq(2)
  end
end
