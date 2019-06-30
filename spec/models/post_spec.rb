require 'rails_helper'

describe 'Post' do

  before do
    @post1 = Post.create(title: "Derek", content: "A Great Post!!")
    end

  it 'has a title' do
    expect(@post1.title).to eq("Derek")
  end
end
