require 'test_helper'

class MagicItemNamesControllerTest < ActionController::TestCase
  setup do
    @magic_item_name = magic_item_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magic_item_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magic_item_name" do
    assert_difference('MagicItemName.count') do
      post :create, magic_item_name: { affix: @magic_item_name.affix, name: @magic_item_name.name }
    end

    assert_redirected_to magic_item_name_path(assigns(:magic_item_name))
  end

  test "should show magic_item_name" do
    get :show, id: @magic_item_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magic_item_name
    assert_response :success
  end

  test "should update magic_item_name" do
    patch :update, id: @magic_item_name, magic_item_name: { affix: @magic_item_name.affix, name: @magic_item_name.name }
    assert_redirected_to magic_item_name_path(assigns(:magic_item_name))
  end

  test "should destroy magic_item_name" do
    assert_difference('MagicItemName.count', -1) do
      delete :destroy, id: @magic_item_name
    end

    assert_redirected_to magic_item_names_path
  end
end
