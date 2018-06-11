require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @scifi = Category.create(name: "Sci Fi")
    @post = Post.create(title: "New Post", content: "Post Content")
    @post.categories << @scifi
  end

  it 'has a name' do
    expect(@scifi.name).to eq('Sci Fi')
  end

  it 'has many posts' do
    expect(@scifi.posts).to include(@post)
  end

end
