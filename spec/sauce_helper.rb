# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"
Sauce.config do |config|
  config[:start_local_application => true]
  config[:browsers] = [
    ["Windows 8", "Firefox", "33"]
  ]
end
