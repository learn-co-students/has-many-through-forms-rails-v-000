require 'rails_helper'

RSpec.describe Category, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "Categories" do
    it "can be created" do
      @cat1 = Category.create(name: "How to create a post")
      expect(@cat1).to be_a(Category)
    end
  end
end
