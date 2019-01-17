require 'rails_helper'

RSpec.describe PostCategory, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @humor = Category.create(name: "Humor")
    @drama = Category.create(name: "Drama")
    @suspense = Category.create(name: "suspense")
    @post1 = Post.create(title: "New Post", content: "Mucho content...")
    @post2 = Post.create(title: "Daily Ponders", content: "Just general musings for the day")
    @humor.post_categories.build(post: @post1).save
    @humor.post_categories.build(post: @post2).save
    @post2.post_categories.build(category: @drama).save
    @post2.post_categories.build(category: @suspense).save
  end

  it 'has many posts' do
    expect(Category.find_by(name: @humor.name).posts.size).to eq(2)
  end

  it 'has many categories' do
    expect(Post.find_by(title: @post2.title).categories.size).to eq(3)
  end

end
