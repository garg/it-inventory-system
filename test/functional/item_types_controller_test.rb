require 'test_helper'

class ItemTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:item_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_item_type
    assert_difference('ItemType.count') do
      post :create, :item_type => { }
    end

    assert_redirected_to item_type_path(assigns(:item_type))
  end

  def test_should_show_item_type
    get :show, :id => item_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => item_types(:one).id
    assert_response :success
  end

  def test_should_update_item_type
    put :update, :id => item_types(:one).id, :item_type => { }
    assert_redirected_to item_type_path(assigns(:item_type))
  end

  def test_should_destroy_item_type
    assert_difference('ItemType.count', -1) do
      delete :destroy, :id => item_types(:one).id
    end

    assert_redirected_to item_types_path
  end
end
