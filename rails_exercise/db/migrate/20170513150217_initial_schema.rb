class InitialSchema < ActiveRecord::Migration[5.1]
  def change
    create_table :customer do |c|
      c.string :name
      c.timestamps null: false
    end

    create_table :supplier do |s|
      s.string :name
      s.timestamps null: false
    end

    create_table :product do |p|
      p.string :name
      p.timestamps null: false
    end

    create_table :order do |o|
      o.references :customer, null: false, index: true, foreign_key: true
      o.string :address
      o.timestamps null: false
    end

    create_table :items do |i|
      i.references :supplier, index: true, foreign_key: true
      i.references :order, null: false, index: true, foreign_key: true
      i.references :product, null: false, index: true, foreign_key: true
      i.decimal :unit_price
      i.decimal :quantity
      i.timestamps null: false
    end

  end
end
