And(/^I leave the (.+) field blank$/) do |field|
  on(OrderPage).send "#{field}=", ''
end

And(/^I enter "([^"]*)" in the name field$/) do |name|
  on(OrderPage).name = name
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