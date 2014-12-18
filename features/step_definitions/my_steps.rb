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
  on(ShoppingCartPage).complete_adoption
end

And(/^I leave the name field blank$/) do
  
end

And(/^I enter "([^"]*)" in the address field$/) do |address|
  on(ShoppingCartPage).address = address
end

And(/^I enter "([^"]*)" in the email field$/) do |email|
  on(ShoppingCartPage).email = email
end

And(/^I select "([^"]*)" in the pay type field$/) do |pay_type|
  on(ShoppingCartPage).pay_type = pay_type
end

And(/^I click the place order button$/) do
  on(ShoppingCartPage).place_order
end

Then(/^I should see "([^"]*)"$/) do |expected_message|
  on(ShoppingCartPage) do |page|
    expect(page.text).to include expected_message
  end
end