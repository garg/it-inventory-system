require 'test_helper'

class FeatureTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:feature_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_feature_type
    assert_difference('FeatureType.count') do
      post :create, :feature_type => { }
    end

    assert_redirected_to feature_type_path(assigns(:feature_type))
  end

  def test_should_show_feature_type
    get :show, :id => feature_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => feature_types(:one).id
    assert_response :success
  end

  def test_should_update_feature_type
    put :update, :id => feature_types(:one).id, :feature_type => { }
    assert_redirected_to feature_type_path(assigns(:feature_type))
  end

  def test_should_destroy_feature_type
    assert_difference('FeatureType.count', -1) do
      delete :destroy, :id => feature_types(:one).id
    end

    assert_redirected_to feature_types_path
  end
end
