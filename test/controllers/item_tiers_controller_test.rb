require 'test_helper'

class ItemTiersControllerTest < ActionController::TestCase
  setup do
    @item_tier = item_tiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_tiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_tier" do
    assert_difference('ItemTier.count') do
      post :create, item_tier: { multiplier: @item_tier.multiplier, name: @item_tier.name }
    end

    assert_redirected_to item_tier_path(assigns(:item_tier))
  end

  test "should show item_tier" do
    get :show, id: @item_tier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_tier
    assert_response :success
  end

  test "should update item_tier" do
    patch :update, id: @item_tier, item_tier: { multiplier: @item_tier.multiplier, name: @item_tier.name }
    assert_redirected_to item_tier_path(assigns(:item_tier))
  end

  test "should destroy item_tier" do
    assert_difference('ItemTier.count', -1) do
      delete :destroy, id: @item_tier
    end

    assert_redirected_to item_tiers_path
  end
end
