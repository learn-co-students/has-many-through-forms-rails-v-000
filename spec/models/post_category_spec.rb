require 'rails_helper'

RSpec.describe PostCategory, type: :model do

  before do
    @category_1 = Category.create
    @category_2 = Category.create
    @new_story = Post.create(title: "New Story About That Damn Elephant")
    @new_story.category_ids = ["1","2"]


  end

  it 'has a title and categories' do
    expect(@new_story.title).to eq("New Story About That Damn Elephant")
    expect(@new_story.category_ids).to eq([1,2])
  end
end
