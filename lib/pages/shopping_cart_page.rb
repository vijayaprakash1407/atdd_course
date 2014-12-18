class ShoppingCartPage
  include PageObject

  button(:complete_adoption, :value => 'Complete the Adoption')
  text_field(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  text_field(:name, :id => 'order_name')
  select(:pay_type, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')
end