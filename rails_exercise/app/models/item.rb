class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :supplier
  validates_presence_of :product, :unit_price, :quantity
  validates_numericality_of :unit_price, :quantity, greater_than: 0

  def total
    unit_price * quantity
  end
end