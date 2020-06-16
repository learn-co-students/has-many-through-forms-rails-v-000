class Post < ActiveRecord::Base
  # adds methods, ie: post_categories, post_categories<<, post_categories.delete, post_categories_ids=ids
  has_many :post_categories
  # adds methods, ie: category_ids=ids
  has_many :categories, through: :post_categories
  # adds methods
  accepts_nested_attributes_for :categories

  # custom setter
  def categories_attributes=(categories_hashes)
    categories_hashes.values.each do |category_attributes|
      # DO NOT CREATE A CATEGORY IF IT DOESN'T HAVE A NAME
      if category_attributes[:name].present?
        category = Category.find_or_create_by(category_attributes)
        # DON'T ADD A CATEGORY TO A POST IF IT ALREADY HAS IT
        if !self.categories.include?(category)
          # new row in post_categories
          # instanciating an instance of the join model, passing category
          self.post_categories.build(category: category)
          # not efficeint or ideal to push
          #self.categories << category
        end
      end
    end
  end

end
