require 'test_helper'

class ArrangementsControllerTest < ActionController::TestCase
  setup do
    @arrangement = arrangements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arrangements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arrangement" do
    assert_difference('Arrangement.count') do
      post :create, arrangement: { description: @arrangement.description, public: @arrangement.public, title: @arrangement.title, uploaded_by: @arrangement.uploaded_by }
    end

    assert_redirected_to arrangement_path(assigns(:arrangement))
  end

  test "should show arrangement" do
    get :show, id: @arrangement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arrangement
    assert_response :success
  end

  test "should update arrangement" do
    patch :update, id: @arrangement, arrangement: { description: @arrangement.description, public: @arrangement.public, title: @arrangement.title, uploaded_by: @arrangement.uploaded_by }
    assert_redirected_to arrangement_path(assigns(:arrangement))
  end

  test "should destroy arrangement" do
    assert_difference('Arrangement.count', -1) do
      delete :destroy, id: @arrangement
    end

    assert_redirected_to arrangements_path
  end
end
