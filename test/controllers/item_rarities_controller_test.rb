require 'test_helper'

class ItemRaritiesControllerTest < ActionController::TestCase
  setup do
    @item_rarity = item_rarities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_rarities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_rarity" do
    assert_difference('ItemRarity.count') do
      post :create, item_rarity: { name: @item_rarity.name }
    end

    assert_redirected_to item_rarity_path(assigns(:item_rarity))
  end

  test "should show item_rarity" do
    get :show, id: @item_rarity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_rarity
    assert_response :success
  end

  test "should update item_rarity" do
    patch :update, id: @item_rarity, item_rarity: { name: @item_rarity.name }
    assert_redirected_to item_rarity_path(assigns(:item_rarity))
  end

  test "should destroy item_rarity" do
    assert_difference('ItemRarity.count', -1) do
      delete :destroy, id: @item_rarity
    end

    assert_redirected_to item_rarities_path
  end
end
