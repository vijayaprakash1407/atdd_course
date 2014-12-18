class OrderPage
  include PageObject

  DEFAULT_DATA = {
      'name' => "Randy Default",
      'address' => '456 Default Drive',
      'email' => 'randy@default.com',
      'pay_type' => 'Credit card'
  }


  button(:complete_adoption, :value => 'Complete the Adoption')
  text_field(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  text_field(:name, :id => 'order_name')
  select(:pay_type, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')

  def checkout(order = {})
    populate_page_with DEFAULT_DATA.merge(order)
    place_order
  end

end