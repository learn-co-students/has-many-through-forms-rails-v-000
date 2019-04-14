require 'rails_helper'

describe 'Post Category' do

  before do
    @p = Post.create(title: "New Post", content: "This is a new post")
    @p.categories.build(name: "New")
    @p.save
    @c = Category.last
  end

  it 'joins post and category' do
    expect(PostCategory.find_by(post_id: @p.id).category_id).to eq(@c.id)
  end

end
