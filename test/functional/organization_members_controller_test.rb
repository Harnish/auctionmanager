require 'test_helper'

class OrganizationMembersControllerTest < ActionController::TestCase
  setup do
    @organization_member = organization_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_member" do
    assert_difference('OrganizationMember.count') do
      post :create, :organization_member => @organization_member.attributes
    end

    assert_redirected_to organization_member_path(assigns(:organization_member))
  end

  test "should show organization_member" do
    get :show, :id => @organization_member.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @organization_member.to_param
    assert_response :success
  end

  test "should update organization_member" do
    put :update, :id => @organization_member.to_param, :organization_member => @organization_member.attributes
    assert_redirected_to organization_member_path(assigns(:organization_member))
  end

  test "should destroy organization_member" do
    assert_difference('OrganizationMember.count', -1) do
      delete :destroy, :id => @organization_member.to_param
    end

    assert_redirected_to organization_members_path
  end
end
