require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @category1 = Category.new(name: "Super cute")
    @post1 = @category1.posts.build(title: "baby elephant")

  end
  describe 'has_many associations' do
    it 'has many posts' do
      expect(@category1.posts).to include(@post1)
    end
  end
end
