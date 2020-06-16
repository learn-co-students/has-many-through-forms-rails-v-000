require 'rails_helper'

describe Post do
    before(:each) do
        post = Post.create(title: "hello world")
    end

    it 'exists' do
        expect(post).to be_valid
    end
end
