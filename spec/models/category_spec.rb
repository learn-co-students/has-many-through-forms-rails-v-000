require 'rails_helper'

RSpec.describe Category, type: :model do

	before do
		@post1 = Post.create(title: "Title 1", content: "Blah blah")
		@post2 = Post.create(title: "Title 2", content: "And blah")
		@category = Category.create(name: "test")
		@category.posts << @post1
		@category.posts << @post2
	end


  it 'has many posts' do
    expect(@category.posts).to eq([@post1, @post2])
  end
end
