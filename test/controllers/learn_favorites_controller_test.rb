require "test_helper"

class LearnFavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learn_favorite = learn_favorites(:one)
  end

  test "should get index" do
    get learn_favorites_url
    assert_response :success
  end

  test "should get new" do
    get new_learn_favorite_url
    assert_response :success
  end

  test "should create learn_favorite" do
    assert_difference("LearnFavorite.count") do
      post learn_favorites_url, params: { learn_favorite: { learn_id: @learn_favorite.learn_id, user_id: @learn_favorite.user_id } }
    end

    assert_redirected_to learn_favorite_url(LearnFavorite.last)
  end

  test "should show learn_favorite" do
    get learn_favorite_url(@learn_favorite)
    assert_response :success
  end

  test "should get edit" do
    get edit_learn_favorite_url(@learn_favorite)
    assert_response :success
  end

  test "should update learn_favorite" do
    patch learn_favorite_url(@learn_favorite), params: { learn_favorite: { learn_id: @learn_favorite.learn_id, user_id: @learn_favorite.user_id } }
    assert_redirected_to learn_favorite_url(@learn_favorite)
  end

  test "should destroy learn_favorite" do
    assert_difference("LearnFavorite.count", -1) do
      delete learn_favorite_url(@learn_favorite)
    end

    assert_redirected_to learn_favorites_url
  end
end
