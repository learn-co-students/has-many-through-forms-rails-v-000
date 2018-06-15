require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  before do
    post_1 = Post.create(title: "First Post Ever", content: "This is my first post!")
    post_2 = Post.create(title: "Second Post", content: "Yet another post. Why?")
    post_3 = Post.create(title: "Guess what?!", content: "I wrote this spec!")

    cat_1 = Category.create(name: "Exciting")
    cat_2 = Category.create(name: "Meh")

    pc_1 = PostCategory.create(post: post_1, category: cat_1)
    @pc_2 = PostCategory.create(post: post_2, category: cat_2)
    pc_3 = PostCategory.create(post: post_3, category: cat_1)
  end

  it "has a category_id and a post_id" do
     expect(@pc_2.category_id).to eq(2)
     expect(@pc_2.post_id).to eq(2)
  end
end
