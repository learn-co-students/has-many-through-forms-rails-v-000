require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'has a title field' do
    expect(Post.new).to respond_to(:title)
  end
end

