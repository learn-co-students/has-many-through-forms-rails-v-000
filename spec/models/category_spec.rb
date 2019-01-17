require 'rails_helper'

RSpec.describe Category, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @humor = Category.create(name: "Humor")
    @drama = Category.create(name: "Drama")
    @suspense = Category.create(name: "suspense")
  end

  it 'has a name' do
    expect(@humor.name).to eq("Humor")
  end

end
