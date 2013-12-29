require 'test_helper'

class Config1sControllerTest < ActionController::TestCase
  setup do
    @config1 = config1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:config1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create config1" do
    assert_difference('Config1.count') do
      post :create, config1: { field1: @config1.field1, field2: @config1.field2, field3: @config1.field3 }
    end

    assert_redirected_to config1_path(assigns(:config1))
  end

  test "should show config1" do
    get :show, id: @config1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @config1
    assert_response :success
  end

  test "should update config1" do
    put :update, id: @config1, config1: { field1: @config1.field1, field2: @config1.field2, field3: @config1.field3 }
    assert_redirected_to config1_path(assigns(:config1))
  end

  test "should destroy config1" do
    assert_difference('Config1.count', -1) do
      delete :destroy, id: @config1
    end

    assert_redirected_to config1s_path
  end
end
