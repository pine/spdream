require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { book_id: @review.book_id, comment: @review.comment, date: @review.date, deleted: @review.deleted, enabled: @review.enabled, title: @review.title, value_bad: @review.value_bad, value_book: @review.value_book, value_good: @review.value_good }
    end

    assert_redirected_to review_path(assigns(:review))
  end

  test "should show review" do
    get :show, id: @review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review
    assert_response :success
  end

  test "should update review" do
    patch :update, id: @review, review: { book_id: @review.book_id, comment: @review.comment, date: @review.date, deleted: @review.deleted, enabled: @review.enabled, title: @review.title, value_bad: @review.value_bad, value_book: @review.value_book, value_good: @review.value_good }
    assert_redirected_to review_path(assigns(:review))
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end

    assert_redirected_to reviews_path
  end
end
