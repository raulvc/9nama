class Order < ApplicationRecord
  belongs_to :customer
  has_many :items, -> { order :name }, dependent: :destroy
  validates_presence_of :customer, :supplier, :address, :item

  def total
    items.to_a.sum(&:total)
  end
end