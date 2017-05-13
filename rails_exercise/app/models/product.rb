class Product < ApplicationRecord
  has_many :order_items
  validates :name, presence: true, uniqueness: true
end