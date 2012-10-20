require 'test_helper'

class AuctionTablesControllerTest < ActionController::TestCase
  setup do
    @auction_table = auction_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auction_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auction_table" do
    assert_difference('AuctionTable.count') do
      post :create, :auction_table => @auction_table.attributes
    end

    assert_redirected_to auction_table_path(assigns(:auction_table))
  end

  test "should show auction_table" do
    get :show, :id => @auction_table.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @auction_table.to_param
    assert_response :success
  end

  test "should update auction_table" do
    put :update, :id => @auction_table.to_param, :auction_table => @auction_table.attributes
    assert_redirected_to auction_table_path(assigns(:auction_table))
  end

  test "should destroy auction_table" do
    assert_difference('AuctionTable.count', -1) do
      delete :destroy, :id => @auction_table.to_param
    end

    assert_redirected_to auction_tables_path
  end
end
