require 'rails_helper'

describe 'Category' do

  it "can be created" do
    Category.create(name: "Fiction")
    expect(Category.find_by(name: "Fiction")).to be_present
  end






end
