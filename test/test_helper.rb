ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
# *** minitest reporters ***
# ref: https://railstutorial.jp/chapters/static_pages?version=5.1#sec-minitest_reporters
require "minitest/reporters"
Minitest::Reporters.use!
# **************************

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  include ApplicationHelper

  # Add more helper methods to be used by all tests here...
end
