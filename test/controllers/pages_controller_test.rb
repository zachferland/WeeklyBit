require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get suscribe" do
    get :suscribe
    assert_response :success
  end

end
