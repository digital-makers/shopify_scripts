# This needs to be a "Line Items" script

customer = Input.cart.customer
if customer
  # If logged in, this script doesn't need to be run.
  exit
end


Input.cart.line_items.delete_if { |item| item.variant.product.product_type == "Members Only" }

Output.cart = Input.cart
