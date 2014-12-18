class HomePage
  include PageObject

  page_url 'http://puppies.herokuapp.com'

  buttons(:view_detail, :value=> 'View Details')

  def select_puppy(number)
    button_element(:value => 'View Details', :index => number - 1).click
  end

end