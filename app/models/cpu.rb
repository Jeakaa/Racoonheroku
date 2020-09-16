class Cpu < ApplicationRecord

  belongs_to :product
  belongs_to :cpusocket
  belongs_to :generation

  accepts_nested_attributes_for :cpusocket
  accepts_nested_attributes_for :generation

end
