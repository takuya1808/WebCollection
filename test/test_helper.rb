ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # test環境でもApplicationヘルパーを使えるようにする
  include ApplicationHelper

  # testで作成されたファイルを削除
  def after_teardown
    super
    CarrierWave.clean_cached_files!(0)
  end
end
