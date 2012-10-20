require 'test_helper'

class AuctionItemsControllerTest < ActionController::TestCase
  setup do
    @auction_item = auction_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auction_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auction_item" do
    assert_difference('AuctionItem.count') do
      post :create, :auction_item => @auction_item.attributes
    end

    assert_redirected_to auction_item_path(assigns(:auction_item))
  end

  test "should show auction_item" do
    get :show, :id => @auction_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @auction_item.to_param
    assert_response :success
  end

  test "should update auction_item" do
    put :update, :id => @auction_item.to_param, :auction_item => @auction_item.attributes
    assert_redirected_to auction_item_path(assigns(:auction_item))
  end

  test "should destroy auction_item" do
    assert_difference('AuctionItem.count', -1) do
      delete :destroy, :id => @auction_item.to_param
    end

    assert_redirected_to auction_items_path
  end
end
