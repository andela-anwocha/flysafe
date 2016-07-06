require 'simplecov'
require 'coveralls'

SimpleCov.start 'rails'

Coveralls.wear!

require 'support/factory_girl'
require 'support/database_cleaner'
require 'support/login_helper'
require 'support/form_helpers'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include LoginHelper, type: :feature
  config.include FormHelper, type: :feature
end
