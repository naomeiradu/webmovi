require 'test_helper'

class ListesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listes_index_url
    assert_response :success
  end

  test "should get new" do
    get listes_new_url
    assert_response :success
  end

  test "should get create" do
    get listes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get listes_destroy_url
    assert_response :success
  end

end
