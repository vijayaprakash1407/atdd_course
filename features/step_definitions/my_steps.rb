When(/^I click the first view details button$/) do
  on(HomePage).select_puppy 1
end

When(/^I checkout with:$/) do |order_info|
  order_info.hashes.each do | order |
    on(OrderPage).checkout order
  end
end

When(/^I checkout$/) do
  on(OrderPage).checkout
end

When(/^I checkout using a purchase order$/) do
  on(OrderPage).checkout({'pay_type' => 'Purchase order'})
end

When(/^I complete the adoption$/) do
  navigate_all
end

When(/^I try to checkout without an? (\w+)$/) do |field|
  navigate_to(OrderPage).checkout({field => ''})
end

When(/^I am checking out$/) do
  navigate_to(OrderPage)
end

Then(/^I see the following payment options:$/) do |expected_options|
  expected_options.hashes.each do |payment_option|
    expect(on(OrderPage).pay_type_options).to include payment_option['pay_type']
  end
end

Then(/^I should see the error message "([^"]*)"$/) do |message|
  expect(@current_page).to have_error_message message
end