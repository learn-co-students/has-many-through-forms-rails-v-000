require 'rails_helper'
RSpec.describe Category, type: :model do

describe "uniquesness" do
  
  before do
      @categories = Category.create([ {name:"amazing"}, {name:"awesome"}, {name:"cool"} ])
  end


  it "doesn't contain any duplicate categories" do
    expect(@categories.detect{ |e| @categories.count(e) > 1 }).to be nil
  end
 end
end
