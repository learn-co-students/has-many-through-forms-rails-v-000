require 'rails_helper'

RSpec.describe PostCategory, type: :model do

  before do
    @new_category = Category.create(name: "Journal")
    @new_category.posts << Post.new(title: "Daily Post", content: "This is a post I write daily")
  end

  it "has a post_id" do
    expect(PostCategory.last.post_id).to eq(@new_category.posts.last.id)
  end

  it "has a category_id" do
    expect(PostCategory.last.category_id).to eq(@new_category.id)
  end
end
