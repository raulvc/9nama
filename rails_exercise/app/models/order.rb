class Order < ApplicationRecord
  belongs_to :customer
  has_many :items, dependent: :destroy
  validates_presence_of :customer, :address

  def total
    items.to_a.sum(&:total)
  end
end