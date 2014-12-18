$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec'
require 'page-object'
require 'require_all'
require 'data_magic'

require_all 'lib'

World(PageObject::PageFactory)
