class Cart < ApplicationRecord
  belongs_to :cart_items
  belongs_to :product, through: :cart_items, source: :product

  def add_product_to_cart(product)
    ci = cart_items.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end

end
