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
  on(OrderPage).complete_adoption
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