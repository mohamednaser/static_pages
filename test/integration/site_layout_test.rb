require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "check links " do 
    get static_pages_help_path
    
    assert_select "a[href=?]", static_pages_help_path
    assert_select "a[href=?]", static_pages_contact_path

  end
end
