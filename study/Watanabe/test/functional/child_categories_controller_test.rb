require 'test_helper'

class ChildCategoriesControllerTest < ActionController::TestCase
  setup do
    @child_category = child_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_category" do
    assert_difference('ChildCategory.count') do
      post :create, child_category: { description: @child_category.description, name: @child_category.name }
    end

    assert_redirected_to child_category_path(assigns(:child_category))
  end

  test "should show child_category" do
    get :show, id: @child_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_category
    assert_response :success
  end

  test "should update child_category" do
    put :update, id: @child_category, child_category: { description: @child_category.description, name: @child_category.name }
    assert_redirected_to child_category_path(assigns(:child_category))
  end

  test "should destroy child_category" do
    assert_difference('ChildCategory.count', -1) do
      delete :destroy, id: @child_category
    end

    assert_redirected_to child_categories_path
  end
end
