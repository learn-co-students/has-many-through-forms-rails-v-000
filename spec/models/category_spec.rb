require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @cute_elephant = Category.create(name: "Cute Elephant")
  end

  it 'has a name' do
    expect(@cute_elephant.name).to eq("Cute Elephant")
  end

end
