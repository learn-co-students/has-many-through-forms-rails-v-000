require 'rails_helper'

RSpec.describe Category, type: :model do
  it "has a name" do 
    cat = Category.new
    cat.name = "Adorable Kittens"
    expect(cat.name).to eq("Adorable Kittens")
  end
end
