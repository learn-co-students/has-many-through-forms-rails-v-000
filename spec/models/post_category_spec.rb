require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  let(:gossip) { Category.find_or_create_by(name: "Gossip") }
  let(:news) { Category.find_or_create_by(name: "News") }
  
  let(:gossip_post_1) { Post.create(title: "Justin Beiber's secret", content: "I heard he has green toes.") }
  let(:gossip_post_2) { Post.create(title: "Wardrobe Malfunction", content: "I heard that the boob was on purpose!") }
  let(:news_post_1) { Post.create(title: "Obama Elected Again", content: "Obama was elected to a second term as president...") }
  
  let(:post_category_1) { PostCategory.create(post_id: gossip_post_1.id, category_id: gossip.id) }
  let(:post_category_2) { PostCategory.create(post_id: gossip_post_2.id, category_id: gossip.id) }
  
  it "belongs to a post" do 
    expect(post_category_1.post).to eq(gossip_post_1)
  end
  
  it "belongs to a category" do 
    expect(post_category_1.category).to eq(gossip)
  end
  
end
