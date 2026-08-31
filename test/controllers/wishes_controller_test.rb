require "test_helper"

class WishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    post login_url, params: {
      email: users(:one).email,
      password: "password"
    }
  end

  test "should get index" do
    get wishes_url

    assert_response :success
  end
end