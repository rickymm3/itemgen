require 'test_helper'

class PlayerItemsControllerTest < ActionController::TestCase
  setup do
    @player_item = player_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_item" do
    assert_difference('PlayerItem.count') do
      post :create, player_item: { full_name: @player_item.full_name, item_rarity_id: @player_item.item_rarity_id, user_id: @player_item.user_id }
    end

    assert_redirected_to player_item_path(assigns(:player_item))
  end

  test "should show player_item" do
    get :show, id: @player_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_item
    assert_response :success
  end

  test "should update player_item" do
    patch :update, id: @player_item, player_item: { full_name: @player_item.full_name, item_rarity_id: @player_item.item_rarity_id, user_id: @player_item.user_id }
    assert_redirected_to player_item_path(assigns(:player_item))
  end

  test "should destroy player_item" do
    assert_difference('PlayerItem.count', -1) do
      delete :destroy, id: @player_item
    end

    assert_redirected_to player_items_path
  end
end
