ELIGIBLE_SERVICES = ['Standard Shipping']

if Input.cart.subtotal_price_was.cents >= 5000

  Input.shipping_rates.each do |shipping_rate|
    if ELIGIBLE_SERVICES.include?(shipping_rate.name)
      shipping_rate.apply_discount(shipping_rate.price, message: "Free shipping!")
    end
  end

end

Output.shipping_rates = Input.shipping_rates
