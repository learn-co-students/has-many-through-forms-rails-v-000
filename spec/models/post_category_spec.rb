require 'rails_helper'

RSpec.describe PostCategory, type: :model do

  before do
    @category = Category.create(name: "Test Posts")
    @post = Post.create(title: "Here we go!!")
    @post_categories = PostCategory.create(category_id: 1, post_id: 1)
  end

  it "has many through" do
    expect(@post.post_categories.first.category.name).to eq("Test Posts")
  end


end
