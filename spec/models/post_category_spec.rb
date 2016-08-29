
RSpec.describe PostCategory, type: :model do

    describe 'associations' do
      let(:postcategory) { PostCategory.new }
      let(:associated_post) { Post.new }

      it 'belongs to a post' do
        postcategory.post = associated_post
        expect(postcategory.post).to eq(associated_post)
      end

    end
end
