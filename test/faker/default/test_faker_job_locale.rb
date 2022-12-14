# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerJobLocale < Test::Unit::TestCase
  def setup
    Faker::Config.locale = 'en-AU'
    @tester = Faker::Job
  end

  def teardown
    Faker::Config.locale = nil
  end

  def test_locale_without_jobs_defaults_to_en
    assert_match(/(\w+\.? ?)/, @tester.position)
  end
end
