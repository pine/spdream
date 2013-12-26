require 'test_helper'

class LinkGroupsControllerTest < ActionController::TestCase
  setup do
    @link_group = link_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:link_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link_group" do
    assert_difference('LinkGroup.count') do
      post :create, link_group: { intro: @link_group.intro, priority: @link_group.priority, title: @link_group.title }
    end

    assert_redirected_to link_group_path(assigns(:link_group))
  end

  test "should show link_group" do
    get :show, id: @link_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link_group
    assert_response :success
  end

  test "should update link_group" do
    put :update, id: @link_group, link_group: { intro: @link_group.intro, priority: @link_group.priority, title: @link_group.title }
    assert_redirected_to link_group_path(assigns(:link_group))
  end

  test "should destroy link_group" do
    assert_difference('LinkGroup.count', -1) do
      delete :destroy, id: @link_group
    end

    assert_redirected_to link_groups_path
  end
end
