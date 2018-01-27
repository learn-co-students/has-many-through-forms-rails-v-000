require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  before do
    @p1 = Post.create(title:"This is a what?", content:"A Post-Category, aka, a Joins Model.")
    @p1.categories_attributes=({"0"=>{'name'=>"explanations"}, "1"=>{'name'=>"definitions"}})
  end

  describe "Post-Categories" do
    it "can be created" do
      expect(@p1.post_categories.size).to eq(2)
    end
  end
end
