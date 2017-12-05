require 'test_helper'

class CurrencyPairsControllerTest < ActionController::TestCase
  setup do
    @currency_pair = currency_pairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:currency_pairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create currency_pair" do
    assert_difference('CurrencyPair.count') do
      post :create, currency_pair: { name: @currency_pair.name }
    end

    assert_redirected_to currency_pair_path(assigns(:currency_pair))
  end

  test "should show currency_pair" do
    get :show, id: @currency_pair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @currency_pair
    assert_response :success
  end

  test "should update currency_pair" do
    patch :update, id: @currency_pair, currency_pair: { name: @currency_pair.name }
    assert_redirected_to currency_pair_path(assigns(:currency_pair))
  end

  test "should destroy currency_pair" do
    assert_difference('CurrencyPair.count', -1) do
      delete :destroy, id: @currency_pair
    end

    assert_redirected_to currency_pairs_path
  end
end
