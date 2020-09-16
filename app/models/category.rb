class Category < ApplicationRecord
  acts_as_nested_set
  has_many :products
  before_destroy :exist_category_in_product

  def exist_category_in_product
    Product.find(self.id).blank?
  end
end
