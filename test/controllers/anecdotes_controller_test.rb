require 'test_helper'

class AnecdotesControllerTest < ActionController::TestCase
  setup do
    @anecdote = anecdotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anecdotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anecdote" do
    assert_difference('Anecdote.count') do
      post :create, anecdote: { description: @anecdote.description, title: @anecdote.title, uploaded_by: @anecdote.uploaded_by }
    end

    assert_redirected_to anecdote_path(assigns(:anecdote))
  end

  test "should show anecdote" do
    get :show, id: @anecdote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anecdote
    assert_response :success
  end

  test "should update anecdote" do
    patch :update, id: @anecdote, anecdote: { description: @anecdote.description, title: @anecdote.title, uploaded_by: @anecdote.uploaded_by }
    assert_redirected_to anecdote_path(assigns(:anecdote))
  end

  test "should destroy anecdote" do
    assert_difference('Anecdote.count', -1) do
      delete :destroy, id: @anecdote
    end

    assert_redirected_to anecdotes_path
  end
end
