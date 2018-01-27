require "rails_helper" 

RSpec.describe Post, type: :model do 
  let(:gossip) { Category.find_or_create_by(name: "Gossip") }
  let(:news) { Category.find_or_create_by(name: "News") }
  
  let(:gossip_post_1) { Post.create(title: "Justin Beiber's secret", content: "I heard he has green toes.") }
  let(:gossip_post_2) { Post.create(title: "Wardrobe Malfunction", content: "I heard that the boob was on purpose!") }
  let(:news_post_1) { Post.create(title: "Obama Elected Again", content: "Obama was elected to a second term as president...") }
  
  it "has a title" do 
    expect(gossip_post_1.title).to eq("Justin Beiber's secret")
  end
  
  it "has content" do 
    expect(gossip_post_1.content).to eq("I heard he has green toes.")
  end
  
  it "has many categories" do
    gossip_post_1.categories << [news, gossip]
    expect(gossip_post_1.categories).to include(news, gossip)
  end
end