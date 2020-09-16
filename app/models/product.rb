class Product < ApplicationRecord
  require 'carrierwave/orm/activerecord'
  mount_uploader :avatar, AvatarUploader

  belongs_to :category
  has_one :cpu, dependent: :destroy
  has_one :gpu, dependent: :destroy

  accepts_nested_attributes_for :cpu
  accepts_nested_attributes_for :gpu


  validates :name, :presence => true



end
