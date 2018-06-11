require 'rails_helper'

RSpec.describe PostCategory, type: :model do
    before do
    @scifi = Category.create(name: "Sci Fi")
    @post = Post.create(title: "New Post", content: "Post Content")
    @post.categories << @scifi
  end

  it 'has a title' do
    expect(@post.title).to eq('New Post')
  end

  it 'has many categories' do
    expect(@post.categories).to include(@scifi)
  end
end
