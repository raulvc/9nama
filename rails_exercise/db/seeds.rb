product = Product.find_or_create_by(
  name: 'R$10 off R$20 of food'
)
supplier = Supplier.find_or_create_by(
  name: 'Tom\'s Awesome Shop'
)
customer = Customer.find_or_create_by(
  name: 'Snake Plissken'
)
Order.find_or_initialize_by(
  address: 'Some place', customer: customer
).tap do |order|
  item = Item.create(order: order, product: product, supplier: supplier, unit_price: 3.33, quantity: 1.0)
  order.items = [item]
  order.save!
end
