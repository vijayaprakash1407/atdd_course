$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec'
require 'page-object'
require 'require_all'
require 'data_magic'

require_all 'lib'

World(PageObject::PageFactory)

PageObject::PageFactory.routes = {
    default: [
        # [HomePage, :select_puppy],
        [DetailsPage, :adopt_me],
        [CartPage, :complete_adoption],
        [OrderPage]
    ]
}

