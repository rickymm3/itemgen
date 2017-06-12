require 'test_helper'

class PlayerItemStatsControllerTest < ActionController::TestCase
  setup do
    @player_item_stat = player_item_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_item_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_item_stat" do
    assert_difference('PlayerItemStat.count') do
      post :create, player_item_stat: { player_item_id: @player_item_stat.player_item_id, stat_type_id: @player_item_stat.stat_type_id, stat_value: @player_item_stat.stat_value }
    end

    assert_redirected_to player_item_stat_path(assigns(:player_item_stat))
  end

  test "should show player_item_stat" do
    get :show, id: @player_item_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_item_stat
    assert_response :success
  end

  test "should update player_item_stat" do
    patch :update, id: @player_item_stat, player_item_stat: { player_item_id: @player_item_stat.player_item_id, stat_type_id: @player_item_stat.stat_type_id, stat_value: @player_item_stat.stat_value }
    assert_redirected_to player_item_stat_path(assigns(:player_item_stat))
  end

  test "should destroy player_item_stat" do
    assert_difference('PlayerItemStat.count', -1) do
      delete :destroy, id: @player_item_stat
    end

    assert_redirected_to player_item_stats_path
  end
end
