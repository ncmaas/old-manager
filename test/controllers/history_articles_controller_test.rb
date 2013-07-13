require 'test_helper'

class HistoryArticlesControllerTest < ActionController::TestCase
  setup do
    @history_article = history_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_article" do
    assert_difference('HistoryArticle.count') do
      post :create, history_article: { description: @history_article.description, title: @history_article.title }
    end

    assert_redirected_to history_article_path(assigns(:history_article))
  end

  test "should show history_article" do
    get :show, id: @history_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history_article
    assert_response :success
  end

  test "should update history_article" do
    patch :update, id: @history_article, history_article: { description: @history_article.description, title: @history_article.title }
    assert_redirected_to history_article_path(assigns(:history_article))
  end

  test "should destroy history_article" do
    assert_difference('HistoryArticle.count', -1) do
      delete :destroy, id: @history_article
    end

    assert_redirected_to history_articles_path
  end
end
