Given(/^I am shopping for puppies$/) do
  visit_page(HomePage)
end

When(/^I click the first view details button$/) do
  on(HomePage).select_puppy 1
end

And(/^I click the adopt me button$/) do
  on(DetailsPage).adopt_me
end

And(/^I click the complete adoption button$/) do
  on(CartPage).complete_adoption
end

And(/^I leave the (.+) field blank$/) do |field|
  on(OrderPage).send "#{field}=", ''
end

And(/^I enter "([^"]*)" in the address field$/) do |address|
  on(OrderPage).address = address
end

And(/^I enter "([^"]*)" in the email field$/) do |email|
  on(OrderPage).email = email
end

And(/^I select "([^"]*)" in the pay type field$/) do |pay_type|
  on(OrderPage).pay_type = pay_type
end

And(/^I click the place order button$/) do
  on(OrderPage).place_order
end

Then(/^I should see "([^"]*)"$/) do |expected_message|
  expect(@current_page.text).to include expected_message
end

And(/^I enter "([^"]*)" in the name field$/) do |name|
  on(OrderPage).name = name
end

When(/^I view the puppy "([^"]*)"$/) do |puppy_name|
  on(HomePage).select_puppy puppy_name
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
  visit(HomePage).select_puppy
  on(DetailsPage).adopt_me
  on(CartPage).complete_adoption
  on(OrderPage).checkout
end

When(/^I try to checkout without an? (\w+)$/) do |field|
  visit(HomePage).select_puppy
  on(DetailsPage).adopt_me
  on(CartPage).complete_adoption
  on(OrderPage).checkout({field => ''})
end

When(/^I am checking out$/) do
  visit(HomePage).select_puppy
  on(DetailsPage).adopt_me
  on(CartPage).complete_adoption
end

Then(/^I see the following payment options:$/) do |expected_options|
  # table is a table.hashes.keys # => [:pay_type]
  expected_options.hashes.each do |payment_option|
    expect(on(OrderPage).pay_type_options).to include payment_option['pay_type']
  end
end

Then(/^I should see the error message "([^"]*)"$/) do |message|
  expect(@current_page).to have_error_message message
end