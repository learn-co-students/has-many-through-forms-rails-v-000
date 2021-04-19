class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  # # to better control what is happening, do not use/accept the autmatic method from the declaration below; comment out and create your own method as seen next
  # accepts_nested_attributes_for :categories

  # this custom version handles looking up or creating a new category if not passed as ids; those are handled by the other parm in the strong parms method in the controller
  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.post_categories.build(category: category)
    end
  end

end
