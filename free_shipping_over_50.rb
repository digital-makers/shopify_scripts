#This needs to be a "Shipping" script

#Add the names of your shipping methods that qualify for free shipping to this array
ELIGIBLE_SERVICES = ['Standard Shipping']
SUBTOTAL_THRESHOLD_CENTS = 5000
FREE_SHIPPING_MESSAGE = "Free shipping!"

# -----


if Input.cart.subtotal_price_was.cents >= SUBTOTAL_THRESHOLD_CENTS

  Input.shipping_rates.each do |shipping_rate|
    if ELIGIBLE_SERVICES.include?(shipping_rate.name)
      shipping_rate.apply_discount(shipping_rate.price, message: FREE_SHIPPING_MESSAGE) 
    end
  end

end

Output.shipping_rates = Input.shipping_rates
