require 'test_helper'

class UserBiosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_bios_index_url
    assert_response :success
  end

  test "should get show" do
    get user_bios_show_url
    assert_response :success
  end

  test "should get new" do
    get user_bios_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_bios_edit_url
    assert_response :success
  end

end
