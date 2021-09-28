require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users( :pedro )
  end

  test "get index: is successful" do
    get users_path
    assert_response :success
  end
  test "get create: is successful" do
    get users_path
    assert_response :success
  end

  test "should create an expense" do
     post '/users', params: { user: {name: @user.name, email: @user.email, sendinformationstatus: @user.sendinformationstatus, phone: @user.phone}}, xhr: true
     assert_response :success
   end

end
l
