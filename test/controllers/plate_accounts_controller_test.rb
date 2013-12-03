require 'test_helper'

class PlateAccountsControllerTest < ActionController::TestCase
  setup do
    @plate_account = plate_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plate_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plate_account" do
    assert_difference('PlateAccount.count') do
      post :create, plate_account: { email: @plate_account.email, name: @plate_account.name, plate_num: @plate_account.plate_num, state: @plate_account.state }
    end

    assert_redirected_to plate_account_path(assigns(:plate_account))
  end

  test "should show plate_account" do
    get :show, id: @plate_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plate_account
    assert_response :success
  end

  test "should update plate_account" do
    patch :update, id: @plate_account, plate_account: { email: @plate_account.email, name: @plate_account.name, plate_num: @plate_account.plate_num, state: @plate_account.state }
    assert_redirected_to plate_account_path(assigns(:plate_account))
  end

  test "should destroy plate_account" do
    assert_difference('PlateAccount.count', -1) do
      delete :destroy, id: @plate_account
    end

    assert_redirected_to plate_accounts_path
  end
end
