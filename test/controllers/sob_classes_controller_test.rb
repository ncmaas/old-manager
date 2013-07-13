require 'test_helper'

class SobClassesControllerTest < ActionController::TestCase
  setup do
    @sob_class = sob_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sob_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sob_class" do
    assert_difference('SobClass.count') do
      post :create, sob_class: { description: @sob_class.description, title: @sob_class.title }
    end

    assert_redirected_to sob_class_path(assigns(:sob_class))
  end

  test "should show sob_class" do
    get :show, id: @sob_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sob_class
    assert_response :success
  end

  test "should update sob_class" do
    patch :update, id: @sob_class, sob_class: { description: @sob_class.description, title: @sob_class.title }
    assert_redirected_to sob_class_path(assigns(:sob_class))
  end

  test "should destroy sob_class" do
    assert_difference('SobClass.count', -1) do
      delete :destroy, id: @sob_class
    end

    assert_redirected_to sob_classes_path
  end
end
