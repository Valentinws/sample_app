require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full_title_helper" do
    assert_equal full_title, "RubyOnRails"
    assert_equal full_title("Help"), "Help | RubyOnRails"
  end
end