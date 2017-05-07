require 'test_helper'

class InterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get interest_category" do
    get interests_interest_category_url
    assert_response :success
  end

  test "should get interest" do
    get interests_interest_url
    assert_response :success
  end

end
