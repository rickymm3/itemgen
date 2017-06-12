require 'test_helper'

class FixedItemStatsControllerTest < ActionController::TestCase
  setup do
    @fixed_item_stat = fixed_item_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fixed_item_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fixed_item_stat" do
    assert_difference('FixedItemStat.count') do
      post :create, fixed_item_stat: { is_unique: @fixed_item_stat.is_unique, magic_item_name_id: @fixed_item_stat.magic_item_name_id, max: @fixed_item_stat.max, min: @fixed_item_stat.min, required_tier: @fixed_item_stat.required_tier, stat_type_id: @fixed_item_stat.stat_type_id }
    end

    assert_redirected_to fixed_item_stat_path(assigns(:fixed_item_stat))
  end

  test "should show fixed_item_stat" do
    get :show, id: @fixed_item_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fixed_item_stat
    assert_response :success
  end

  test "should update fixed_item_stat" do
    patch :update, id: @fixed_item_stat, fixed_item_stat: { is_unique: @fixed_item_stat.is_unique, magic_item_name_id: @fixed_item_stat.magic_item_name_id, max: @fixed_item_stat.max, min: @fixed_item_stat.min, required_tier: @fixed_item_stat.required_tier, stat_type_id: @fixed_item_stat.stat_type_id }
    assert_redirected_to fixed_item_stat_path(assigns(:fixed_item_stat))
  end

  test "should destroy fixed_item_stat" do
    assert_difference('FixedItemStat.count', -1) do
      delete :destroy, id: @fixed_item_stat
    end

    assert_redirected_to fixed_item_stats_path
  end
end
