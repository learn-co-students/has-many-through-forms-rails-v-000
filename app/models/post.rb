class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories


  def categories_attributes=(category_attributes)
    category_attributes.values.each do |attr|
      category = Category.find_or_create_by(atrr)
      self.post_categories.build(category: category)
    end
  end

end
