require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
    test "full title helper" do
        assert_equal "Astral Motors", full_title
        assert_equal "Home | Astral Motors", full_title("Home")
    end
end