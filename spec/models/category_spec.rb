require 'rails_helper'

RSpec.describe Category, type: :model do

  before do
    @new_category = Category.create(name: "Journal")
    @new_category.posts << Post.new(title: "Daily Post", content: "This is a post I write daily")
  end


  it "has a title" do
    expect(Category.last.name).to eq("Journal")
  end

  it "has a post with a title and content" do
    expect(@new_category.posts.last.title).to eq("Daily Post")
    expect(@new_category.posts.last.content).to eq("This is a post I write daily")
  end
end
