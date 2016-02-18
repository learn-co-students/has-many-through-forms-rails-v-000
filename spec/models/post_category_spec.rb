require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  before do 
  	@post = Post.create(title: "New Post", content: "Post Content")
  	@category = @post.categories.create(name: "Poetry")
  end

  it "gets created" do
  	expect(@post.post_categories.size).to eq(1)
  end

  
end
