class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories


  def categories_attributes=(category_attributes)
    #rails turns this into a hash
    category_attributes.values.each do |attribute|
      category = Category.find_or_create_by(attribute)
      self.post_categories.build(category: category)
    end
  end

end
