require 'test_helper'

class CommonItemsControllerTest < ActionController::TestCase
  setup do
    @common_item = common_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:common_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create common_item" do
    assert_difference('CommonItem.count') do
      post :create, common_item: { max: @common_item.max, min: @common_item.min, name: @common_item.name, stat_type_id: @common_item.stat_type_id, tier_id: @common_item.tier_id }
    end

    assert_redirected_to common_item_path(assigns(:common_item))
  end

  test "should show common_item" do
    get :show, id: @common_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @common_item
    assert_response :success
  end

  test "should update common_item" do
    patch :update, id: @common_item, common_item: { max: @common_item.max, min: @common_item.min, name: @common_item.name, stat_type_id: @common_item.stat_type_id, tier_id: @common_item.tier_id }
    assert_redirected_to common_item_path(assigns(:common_item))
  end

  test "should destroy common_item" do
    assert_difference('CommonItem.count', -1) do
      delete :destroy, id: @common_item
    end

    assert_redirected_to common_items_path
  end
end
